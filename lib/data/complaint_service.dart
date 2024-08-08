import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ComplaintService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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

      return newComplaintId;
    }

    throw Exception('User not logged in.');
  }

  Future<String> _uploadImage(XFile image) async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('complaint_images')
        .child('${DateTime.now().toIso8601String()}.jpg');
    await ref.putFile(File(image.path));
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
}
