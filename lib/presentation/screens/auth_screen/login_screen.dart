import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:pengaduan_warga/utils/theme.dart';
import 'package:pengaduan_warga/presentation/bloc/login_bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _secureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                state.mapOrNull(
                  loggedIn: (value) {
                    Fluttertoast.showToast(
                      msg: 'Login Berhasil',
                      backgroundColor: Colors.green,
                      gravity: ToastGravity.BOTTOM,
                      textColor: Colors.white,
                    );
                  },
                  loginRoleError: (value) {
                    Fluttertoast.showToast(
                      msg: value.message,
                      backgroundColor: Colors.red,
                      gravity: ToastGravity.BOTTOM,
                      textColor: Colors.white,
                    );
                  },
                  loginError: (value) {
                    final message = removeErrorCode(value.message);
                    Fluttertoast.showToast(
                      msg: message,
                      backgroundColor: Colors.red,
                      gravity: ToastGravity.BOTTOM,
                      textColor: Colors.white,
                    );
                  },
                );
              },
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/app_icon_modified.png'),
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Masuk Dengan Menggunakan Email \nAnda Untuk Melanjutkan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 32),
                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email_outlined),
                            hintText: 'Masukkan Email Anda',
                            filled: true,
                            fillColor: thirdColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(color: fourthColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(color: fourthColor),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password Tidak Boleh Kosong';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          obscureText: _secureText,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline),
                            hintText: 'Masukkan Password Anda',
                            filled: true,
                            fillColor: thirdColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(color: fourthColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(color: fourthColor),
                            ),
                            suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(
                                _secureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              context.pushNamed('forgot_password');
                            },
                            child: const Text(
                              'Lupa Password Anda?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<LoginBloc>(context).add(
                                LoginEvent.login(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: eighthColor,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 80.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: state.maybeWhen(
                            loginLoading: () =>
                                const CircularProgressIndicator(),
                            orElse: () => const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Belum Punya Akun?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context.pushNamed('register');
                              },
                              child: const Text(
                                'Klik Disini Untuk Daftar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }
}

String removeErrorCode(String message) {
  final regex = RegExp(r'^\[.*?\] ');
  return message.replaceFirst(regex, '');
}
