import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:pengaduan_warga/data/complaint_service.dart';
import 'package:pengaduan_warga/presentation/bloc/complaint_form/complaint_form_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/login_bloc/login_bloc.dart';

class ComplaintFormScreen extends StatefulWidget {
  const ComplaintFormScreen({super.key});

  @override
  _ComplaintFormScreenState createState() => _ComplaintFormScreenState();
}

class _ComplaintFormScreenState extends State<ComplaintFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _rtController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  XFile? _image;
  String? selectedRT;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ComplaintFormBloc(ComplaintService()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Buat Laporan Anda Disini',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Konfirmasi'),
                      content:
                          const Text('Apakah anda ingin keluar dari akun ini?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: const Text('Batal'),
                        ),
                        TextButton(
                          onPressed: () {
                            context
                                .read<LoginBloc>()
                                .add(const LoginEvent.loggedOut());
                            context.pop();
                          },
                          child: const Text(
                            'Iya',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            )
          ],
          forceMaterialTransparency: true,
        ),
        body: BlocListener<ComplaintFormBloc, ComplaintFormState>(
          listener: (context, state) {
            final scaffoldMessenger = ScaffoldMessenger.of(context);

            state.when(
              complaintFormInitial: () {},
              complaintFormLoading: () {
                scaffoldMessenger.showSnackBar(
                  const SnackBar(
                    content: Text('Mengirim laporan...'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              complaintFormSuccess: () {
                scaffoldMessenger.showSnackBar(
                  const SnackBar(content: Text('Laporan berhasil dikirim')),
                );
                _clearForm();
              },
              complaintFormError: (message) {
                scaffoldMessenger.showSnackBar(
                  SnackBar(content: Text('Gagal mengirim laporan: $message')),
                );
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Pelapor',
                      hintText: 'Masukkan nama pelapor',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama Pelapor tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _phoneController,
                          decoration: const InputDecoration(
                            labelText: 'Nomor Telepon',
                            hintText: '08*****',
                            hintStyle: TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nomor harus diisi';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Text(
                              'RT',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            value: selectedRT,
                            items: List.generate(
                              88,
                              (index) => DropdownMenuItem<String>(
                                value: (index + 1).toString().padLeft(2, '0'),
                                child: Text(
                                    'RT ${(index + 1).toString().padLeft(2, '0')}'),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedRT = value;
                              });
                            },
                            buttonStyleData: ButtonStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black54),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              height: 56,
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                              ),
                              iconSize: 18,
                              iconEnabledColor: Colors.black,
                              iconDisabledColor: Colors.grey,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              maxHeight: 200,
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                      labelText: 'Alamat',
                      hintText: 'Alamat pelapor',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Alamat tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Detail Laporan',
                      hintText: 'Tuliskan detail laporan pelapor',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Detail Laporan tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () => _showImageSourceActionSheet(context),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: _image == null
                            ? const Text(
                                'Tekan untuk memilih gambar (opsional)',
                                style: TextStyle(
                                  color: Colors.black38,
                                ),
                              )
                            : Image.file(File(_image!.path)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<ComplaintFormBloc, ComplaintFormState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () => _submitForm(context),
                        child: state.maybeWhen(
                          complaintFormLoading: () =>
                              const CircularProgressIndicator(),
                          orElse: () => const Text('Kirim Laporan'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      final resizedImage = await _resizeImage(File(pickedImage.path));
      setState(() {
        _image = XFile(resizedImage.path);
      });
    }
  }

  Future<File> _resizeImage(File file) async {
    final img.Image? image = img.decodeImage(await file.readAsBytes());

    if (image == null) {
      throw Exception('Failed to decode image');
    }

    final List<int> encodedImage = img.encodeJpg(image, quality: 25);

    final resizedFile = File(file.path)..writeAsBytesSync(encodedImage);

    return resizedFile;
  }

  void _showImageSourceActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Ambil dari Kamera'),
                onTap: () async {
                  Navigator.pop(context);
                  final status = await Permission.camera.request();
                  if (status.isGranted) {
                    _pickImage(ImageSource.camera);
                  } else if (status.isPermanentlyDenied) {
                    openAppSettings();
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Pilih dari Galeri'),
                onTap: () async {
                  Navigator.pop(context);
                  if (Platform.isAndroid) {
                    final androidInfo = await DeviceInfoPlugin().androidInfo;
                    if (androidInfo.version.sdkInt <= 32) {
                      final status = await Permission.storage.request();
                      if (status.isGranted) {
                        _pickImage(ImageSource.gallery);
                      } else if (status.isPermanentlyDenied) {
                        openAppSettings();
                      }
                    } else {
                      final status = await Permission.photos.request();
                      if (status.isGranted) {
                        _pickImage(ImageSource.gallery);
                      } else if (status.isPermanentlyDenied) {
                        openAppSettings();
                      }
                    }
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      if (selectedRT == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('RT harus dipilih')),
        );
        return;
      }

      _rtController.text = selectedRT!;

      context.read<ComplaintFormBloc>().add(ComplaintFormEvent.submitComplaint(
            name: _nameController.text,
            phone: _phoneController.text,
            rt: _rtController.text,
            address: _addressController.text,
            description: _descriptionController.text,
            image: _image,
          ));
    }
  }

  void _clearForm() {
    _nameController.clear();
    _phoneController.clear();
    _rtController.clear();
    _addressController.clear();
    _descriptionController.clear();
    setState(() {
      _image = null;
      selectedRT = null;
    });
  }
}
