import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUpUser(
    String username,
    String email,
    String password,
    String role,
  ) async {
    try {
      final userCredentials = await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );

      await _firestore.collection('users').doc(userCredentials.user!.uid).set({
        'username': username,
        'email': email,
        'role': role,
      });
    } on FirebaseAuthException catch (error) {
      if (error.code == 'email-already-in-use') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Email sudah digunakan.',
        );
      } else if (error.code == 'weak-password') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Password terlalu lemah.',
        );
      } else if (error.code == 'invalid-email') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Email tidak valid.',
        );
      } else {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Terjadi kesalahan saat mendaftar.',
        );
      }
    }
    return;
  }

  Future<UserCredential> signInUser(String email, String password) async {
    try {
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Tidak ada pengguna yang terdaftar dengan email tersebut.',
        );
      } else if (error.code == 'wrong-password') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Password tidak valid.',
        );
      } else if (error.code == 'invalid-email') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Email tidak valid.',
        );
      } else if (error.code == 'invalid-credential') {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Email atau password salah.',
        );
      } else {
        throw FirebaseAuthException(
          code: error.code,
          message: 'Terjadi kesalahan saat login.',
        );
      }
    }
  }

  Future<void> signOutUser() async {
    final User? firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      await _auth.signOut();
    }
  }

  Future<String?> getCurrentUsername() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(user.uid).get();
      return userDoc.exists ? userDoc['username'] : null;
    }
    return null;
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
    } on FirebaseAuthException catch (error) {
      throw FirebaseAuthException(
        code: error.code,
        message: 'Ada kesalahan saat mengirim email reset password.',
      );
    }
  }

  Future<String> getUserRole(String uid) async {
    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    return userDoc['role'];
  }
}
