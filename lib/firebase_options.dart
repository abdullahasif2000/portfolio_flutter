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
    apiKey: 'AIzaSyAWrl6ibW_TvP-q4lfflc1DcgBSYFUi7xA',
    appId: '1:516912093556:web:2b48b90773f1755e323421',
    messagingSenderId: '516912093556',
    projectId: 'portfolio-9dd58',
    authDomain: 'portfolio-9dd58.firebaseapp.com',
    storageBucket: 'portfolio-9dd58.appspot.com',
    measurementId: 'G-W5CHXK039Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaZZErtWmzBEWBzMghdMN4xKMn2_lcRU8',
    appId: '1:516912093556:android:1688ebdcf22b0c19323421',
    messagingSenderId: '516912093556',
    projectId: 'portfolio-9dd58',
    storageBucket: 'portfolio-9dd58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDldPjRBB5S9GNh0vFIqged-JPdiI9oRKw',
    appId: '1:516912093556:ios:13c5df2263104bb2323421',
    messagingSenderId: '516912093556',
    projectId: 'portfolio-9dd58',
    storageBucket: 'portfolio-9dd58.appspot.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDldPjRBB5S9GNh0vFIqged-JPdiI9oRKw',
    appId: '1:516912093556:ios:13c5df2263104bb2323421',
    messagingSenderId: '516912093556',
    projectId: 'portfolio-9dd58',
    storageBucket: 'portfolio-9dd58.appspot.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWrl6ibW_TvP-q4lfflc1DcgBSYFUi7xA',
    appId: '1:516912093556:web:670106a00a4c706d323421',
    messagingSenderId: '516912093556',
    projectId: 'portfolio-9dd58',
    authDomain: 'portfolio-9dd58.firebaseapp.com',
    storageBucket: 'portfolio-9dd58.appspot.com',
    measurementId: 'G-Y7PX4DGWJP',
  );
}