// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBQQgo20DoAZem-dL9EA9dY8WUZUcf47p8',
    appId: '1:998998929323:web:b782c2aa8bbe67424c2cee',
    messagingSenderId: '998998929323',
    projectId: 'pengaduan-warga-karang-rejo',
    authDomain: 'pengaduan-warga-karang-rejo.firebaseapp.com',
    storageBucket: 'pengaduan-warga-karang-rejo.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_-7iuJNIq3OKHVIfS-0GGtpq3CoS0Jm0',
    appId: '1:998998929323:android:0043068a4b3352d64c2cee',
    messagingSenderId: '998998929323',
    projectId: 'pengaduan-warga-karang-rejo',
    storageBucket: 'pengaduan-warga-karang-rejo.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBQQgo20DoAZem-dL9EA9dY8WUZUcf47p8',
    appId: '1:998998929323:web:dae04a611dac76574c2cee',
    messagingSenderId: '998998929323',
    projectId: 'pengaduan-warga-karang-rejo',
    authDomain: 'pengaduan-warga-karang-rejo.firebaseapp.com',
    storageBucket: 'pengaduan-warga-karang-rejo.appspot.com',
  );
}