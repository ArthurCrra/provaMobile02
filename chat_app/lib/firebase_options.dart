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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyAfW_Nj2ePk5UGiB5gGbympKetg0PNa840',
    appId: '1:513295811246:web:2f26196b46cf6350e8a33f',
    messagingSenderId: '513295811246',
    projectId: 'provamobile2-4644d',
    authDomain: 'provamobile2-4644d.firebaseapp.com',
    storageBucket: 'provamobile2-4644d.appspot.com',
    measurementId: 'G-D8GVVTPF0Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkME66lc1cu2Ml4NhaRC22KId0-qnzSrU',
    appId: '1:513295811246:android:e7725919850a7e6fe8a33f',
    messagingSenderId: '513295811246',
    projectId: 'provamobile2-4644d',
    storageBucket: 'provamobile2-4644d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPnMdIyiGH6KxgDL8ci3tIQNmZ_pCVt4Y',
    appId: '1:513295811246:ios:bb09362fe6f13794e8a33f',
    messagingSenderId: '513295811246',
    projectId: 'provamobile2-4644d',
    storageBucket: 'provamobile2-4644d.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPnMdIyiGH6KxgDL8ci3tIQNmZ_pCVt4Y',
    appId: '1:513295811246:ios:bb09362fe6f13794e8a33f',
    messagingSenderId: '513295811246',
    projectId: 'provamobile2-4644d',
    storageBucket: 'provamobile2-4644d.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAfW_Nj2ePk5UGiB5gGbympKetg0PNa840',
    appId: '1:513295811246:web:847eda540fac288de8a33f',
    messagingSenderId: '513295811246',
    projectId: 'provamobile2-4644d',
    authDomain: 'provamobile2-4644d.firebaseapp.com',
    storageBucket: 'provamobile2-4644d.appspot.com',
    measurementId: 'G-WMSP5JDFWY',
  );
}
