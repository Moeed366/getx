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
    apiKey: 'AIzaSyDpPlFPm3CrDYYRL3rpo6tf2iS5T4iD-ig',
    appId: '1:810712620402:web:35959030088f7ce17c11eb',
    messagingSenderId: '810712620402',
    projectId: 'getx-a01a2',
    authDomain: 'getx-a01a2.firebaseapp.com',
    storageBucket: 'getx-a01a2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUDV2-Ed-IZaZNSKEDzsm7gjXvgHNueQI',
    appId: '1:810712620402:android:d22b822517447c967c11eb',
    messagingSenderId: '810712620402',
    projectId: 'getx-a01a2',
    storageBucket: 'getx-a01a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlhWl5JJqt-EqHk2AeGSQIq1dhrbeMyV8',
    appId: '1:810712620402:ios:994eeae18fdc53737c11eb',
    messagingSenderId: '810712620402',
    projectId: 'getx-a01a2',
    storageBucket: 'getx-a01a2.appspot.com',
    iosBundleId: 'com.example.getx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAlhWl5JJqt-EqHk2AeGSQIq1dhrbeMyV8',
    appId: '1:810712620402:ios:994eeae18fdc53737c11eb',
    messagingSenderId: '810712620402',
    projectId: 'getx-a01a2',
    storageBucket: 'getx-a01a2.appspot.com',
    iosBundleId: 'com.example.getx',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDpPlFPm3CrDYYRL3rpo6tf2iS5T4iD-ig',
    appId: '1:810712620402:web:14cbdab334e0b8037c11eb',
    messagingSenderId: '810712620402',
    projectId: 'getx-a01a2',
    authDomain: 'getx-a01a2.firebaseapp.com',
    storageBucket: 'getx-a01a2.appspot.com',
  );

}