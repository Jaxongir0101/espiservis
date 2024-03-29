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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAx8v9uZsS-9sk_uLVTkRZ5M-A0B8oWQiI',
    appId: '1:888390664021:android:e126b8417d29b969aaf9dc',
    messagingSenderId: '',
    projectId: 'espiservice',
    storageBucket: 'espiservice.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7fFjVUnSiT0iIyZyNlZ58KX6kBsWHl3k',
    appId: '1:778420375918:ios:7da9b51f111f6d6ffab17f',
    messagingSenderId: '778420375918',
    projectId: 'chatxo-message-auth',
    storageBucket: 'chatxo-message-auth.appspot.com',
    androidClientId:
        '778420375918-1skvej806nt03ggr8ua5oi3df5tg3sdl.apps.googleusercontent.com',
    iosClientId:
        '778420375918-2dib1dc4t3aujm9ndbh9hlu6gck53s3i.apps.googleusercontent.com',
    iosBundleId: 'de.chatxo.app',
  );
}
