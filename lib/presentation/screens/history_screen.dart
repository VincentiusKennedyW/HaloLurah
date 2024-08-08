import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pengaduan_warga/data/complaint_service.dart';
import 'package:pengaduan_warga/presentation/bloc/history/history_bloc.dart';
import 'package:pengaduan_warga/utils/theme.dart';
import 'package:photo_view/photo_view.dart';

class HistoryScreen extends StatelessWidget {
  final ComplaintService complaintService;

  const HistoryScreen({required this.complaintService, super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HistoryBloc>().add(LoadHistory());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Riwayat Laporan Anda',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info_outlined,
            ),
            onPressed: () {
              _showAboutDialog(context);
            },
          ),
        ],
        forceMaterialTransparency: true,
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is HistoryError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          if (state is HistoryLoaded) {
            return StreamBuilder<List<Map<String, dynamic>>>(
              stream: state.complaintsStream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                final complaints = snapshot.data ?? [];
                if (complaints.isEmpty) {
                  return const Center(
                      child: Text('Belum ada laporan yang dibuat'));
                }
                return ListView.builder(
                  itemCount: complaints.length,
                  itemBuilder: (context, index) {
                    final complaint = complaints[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(width: 8.0),
                                  Expanded(
                                    child: Text(
                                      complaint['name'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.blue,
                                    ),
                                    child: const Text('Detail'),
                                    onPressed: () {
                                      showDetailDialog(context, complaint);
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                'Laporan pada tanggal:',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Text(
                                DateFormat('dd MMMM yyyy HH:mm').format(
                                  (complaint['timestamp'] as Timestamp)
                                      .toDate(),
                                ),
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              const SizedBox(height: 4.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4.0,
                                  horizontal: 8.0,
                                ),
                                decoration: BoxDecoration(
                                  color: _getStatusColor(complaint['status']),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Text(
                                  'Status: ${complaint['status']}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          }
          return const Center(child: Text('Error Tidak Diketahui'));
        },
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Menunggu Konfirmasi':
        return Colors.orange;
      case 'Diterima':
        return Colors.green;
      case 'Ditolak':
        return Colors.red;
      case 'Selesai':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  void showDetailDialog(BuildContext context, Map<String, dynamic> complaint) {
    final messages = complaint['messages'] as String?;
    final imageUrl = complaint['imageUrl'] as String?;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('Detail Laporan',
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Pelapor: ${complaint['name']}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('RT: ${complaint['rt'] ?? 'N/A'}'),
                  const SizedBox(height: 8),
                  Text('Alamat: ${complaint['address'] ?? 'N/A'}'),
                  const SizedBox(height: 8),
                  Text('Deskripsi: ${complaint['description'] ?? 'N/A'}'),
                  const SizedBox(height: 16),
                  const Text('Pesan dari administrasi:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      messages == null || messages.isEmpty
                          ? 'Tidak ada pesan'
                          : messages,
                      style: TextStyle(
                          color: messages == null || messages.isEmpty
                              ? Colors.grey
                              : Colors.black),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Gambar:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: imageUrl != null
                        ? GestureDetector(
                            onTap: () {
                              showImageDialog(context, imageUrl);
                            },
                            child: Image.network(
                              imageUrl,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const Text('Error loading image');
                              },
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return const Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                          )
                        : const Text('Tidak ada gambar untuk laporan ini',
                            style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showImageDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: PhotoView(
              imageProvider: NetworkImage(imageUrl),
            ),
          ),
        );
      },
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/app_icon_modified.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                      'assets/images/logo_stikom.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Halo Lurah, sebuah aplikasi pengaduan warga yang dibuat untuk memudahkan warga Karang Rejo dalam melaporkan keluhan dan masalah yang terjadi di sekitar lingkungan mereka kepada pihak Kelurahan atau RT.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Dibuat oleh Kelompok 11 KKN Universitas Mulia 2023/2024.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Untuk bantuan terkait maintenance aplikasi/web, dapat menghubungi:\n+62811598778 (WhatsApp)\na.n Vincentius Kennedy Winardinata',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
