// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAAXCd0eofk427pVsKfd_RpfJL387lq7kc',
    appId: '1:190708065484:web:02d3dfc353b5717d4a4e69',
    messagingSenderId: '190708065484',
    projectId: 'gymapp-9a8a8',
    authDomain: 'gymapp-9a8a8.firebaseapp.com',
    storageBucket: 'gymapp-9a8a8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDw5UkrwfP6JOow-OgNOFbNg4rY6h0DonA',
    appId: '1:190708065484:android:9c6bddf6eb1697114a4e69',
    messagingSenderId: '190708065484',
    projectId: 'gymapp-9a8a8',
    storageBucket: 'gymapp-9a8a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEF70OjJfCyczjYCrQhXO7UwtTrIN4GK0',
    appId: '1:190708065484:ios:8dacd5a0ea793cd24a4e69',
    messagingSenderId: '190708065484',
    projectId: 'gymapp-9a8a8',
    storageBucket: 'gymapp-9a8a8.appspot.com',
    iosBundleId: 'com.hypeteq.fitnessapp',
  );
}
