import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:googleapis_auth/auth_io.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart' show rootBundle;

class ComplaintService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final String serviceAccountPath = 'assets/keys/serviceAccountKey.json';

  Future<String> submitComplaint({
    required String name,
    required String phone,
    required String rt,
    required String address,
    required String description,
    required XFile? image,
  }) async {
    final User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      String? imageUrl;
      if (image != null) {
        imageUrl = await _uploadImage(image);
      }

      DocumentReference docRef = await _firestore.collection('complaints').add({
        'userId': user.uid,
        'name': name,
        'phone': phone,
        'rt': rt,
        'address': address,
        'description': description,
        'imageUrl': imageUrl,
        'status': 'Menunggu Konfirmasi',
        'timestamp': FieldValue.serverTimestamp(),
      });

      String newComplaintId = docRef.id;

      await _sendNotificationToAdmin(
        title: "Pengaduan Baru",
        body: "$name mengirimkan laporan baru.",
      );

      return newComplaintId;
    }

    throw Exception('User not logged in.');
  }

  Future<String> _uploadImage(XFile image) async {
    final storageRef = FirebaseStorage.instance.ref();
    final fileName = '${DateTime.now().toIso8601String()}.jpg';
    final ref = storageRef.child('complaint_images/$fileName');

    if (kIsWeb) {
      final Uint8List imageData = await image.readAsBytes();
      await ref.putData(
        imageData,
        SettableMetadata(contentType: 'image/jpeg'),
      );
    } else {
      await ref.putFile(File(image.path));
    }

    return await ref.getDownloadURL();
  }

  Stream<List<Map<String, dynamic>>> getUserComplaintsStream(String userId) {
    return _firestore
        .collection('complaints')
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) {
              final data = doc.data();
              data['id'] = doc.id;
              return data;
            }).toList());
  }

  Future<void> _sendNotificationToAdmin({
    required String title,
    required String body,
  }) async {
    try {
      var credentials = await _getAccessToken();
      var accessToken = credentials.accessToken.data;

      var url = Uri.parse(
          'https://fcm.googleapis.com/v1/projects/pengaduan-warga-karang-rejo/messages:send');
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      };

      var bodyData = jsonEncode({
        "message": {
          "topic": "adminNotifications",
          "notification": {
            "title": title,
            "body": body,
          },
        }
      });

      var response = await http.post(url, headers: headers, body: bodyData);

      if (response.statusCode == 200) {
        print('Notifikasi berhasil dikirim ke admin');
      } else {
        print('Gagal mengirim notifikasi: ${response.body}');
      }
    } catch (e) {
      print('Error mengirim notifikasi: $e');
    }
  }

  Future<AccessCredentials> _getAccessToken() async {
    String serviceAccountKey =
        await rootBundle.loadString('assets/keys/serviceAccountKey.json');

    var accountCredentials = ServiceAccountCredentials.fromJson(
      serviceAccountKey,
    );

    const scopes = ['https://www.googleapis.com/auth/cloud-platform'];

    var client = http.Client();
    var credentials = await obtainAccessCredentialsViaServiceAccount(
      accountCredentials,
      scopes,
      client,
    );
    client.close();
    return credentials;
  }
}
