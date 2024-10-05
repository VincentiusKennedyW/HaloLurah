import 'package:flutter/material.dart';
import 'package:pengaduan_warga/utils/theme.dart';

void showAppAboutDialog(BuildContext context) {
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
                'Halo Lurah, sebuah aplikasi pengaduan warga yang dibuat untuk memudahkan warga Karang Rejo dalam melaporkan keluhan dan masalah yang terjadi di sekitar lingkungan mereka kepada pihak Kelurahan.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Dibuat oleh Vincentius Kennedy Winardinata.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Untuk bantuan terkait aplikasi, dapat menghubungi:\n+62811598778 (WhatsApp)',
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
