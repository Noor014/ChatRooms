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
    apiKey: 'AIzaSyDie9s5a1gi8dSRp05Vi2fgBNKucfpmWf4',
    appId: '1:763352999558:web:af771fb4fa0736b90d9307',
    messagingSenderId: '763352999558',
    projectId: 'chatrooms-ada32',
    authDomain: 'chatrooms-ada32.firebaseapp.com',
    storageBucket: 'chatrooms-ada32.appspot.com',
    measurementId: 'G-LLFHJM054D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeIks5q4ina0CwPUjQlJB1ivs2ISHWEb0',
    appId: '1:763352999558:android:a8b9ae17ee9797320d9307',
    messagingSenderId: '763352999558',
    projectId: 'chatrooms-ada32',
    storageBucket: 'chatrooms-ada32.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhRrZCjn7bSgfaPNGNwmAYQsnYwaf2Jf4',
    appId: '1:763352999558:ios:0b0c4966497b343c0d9307',
    messagingSenderId: '763352999558',
    projectId: 'chatrooms-ada32',
    storageBucket: 'chatrooms-ada32.appspot.com',
    iosClientId: '763352999558-enfmr7o38ufvr3mtcsjadlq29tcjd36t.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatrooms',
  );
}
