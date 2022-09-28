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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDkGYvltQOCLZeuyAK1AjpDrYBBRsJ1Woc',
    appId: '1:472693426369:web:288c63549897fff07fec40',
    messagingSenderId: '472693426369',
    projectId: 'lewo-website',
    authDomain: 'lewo-website.firebaseapp.com',
    storageBucket: 'lewo-website.appspot.com',
    measurementId: 'G-2SW7W3625C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQeXMRXFgQvsRWns2ICbXVyzqvDaN33Eo',
    appId: '1:472693426369:android:2fa1fa0e98599cd47fec40',
    messagingSenderId: '472693426369',
    projectId: 'lewo-website',
    storageBucket: 'lewo-website.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4zBKNbHmqGCnI_MEAIbODYpTBiBgLJNs',
    appId: '1:472693426369:ios:2aef93050860b61a7fec40',
    messagingSenderId: '472693426369',
    projectId: 'lewo-website',
    storageBucket: 'lewo-website.appspot.com',
    iosClientId: '472693426369-0387mr217g38dc0urlmqv1enqu18kcl6.apps.googleusercontent.com',
    iosBundleId: 'com.leventozkan.leventOzkanPersonalWebsite',
  );
}