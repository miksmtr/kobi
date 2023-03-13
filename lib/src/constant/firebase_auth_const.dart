import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

final actionCodeSettings = ActionCodeSettings(
  url: 'https://flutterfire-e2e-tests.firebaseapp.com',
  handleCodeInApp: true,
  androidMinimumVersion: '1',
  androidPackageName: 'io.flutter.plugins.com.spacesoftwareservices.kobi',
  iOSBundleId: 'io.flutter.plugins.com.spacesoftwareservices.kobi',
);
final emailLinkProviderConfig = EmailLinkAuthProvider(
  actionCodeSettings: actionCodeSettings,
);

const GOOGLE_CLIENT_ID =
    '448618578101-sg12d2qin42cpr00f8b0gehs5s7inm0v.apps.googleusercontent.com';
const GOOGLE_REDIRECT_URI =
    'https://react-native-firebase-testing.firebaseapp.com/__/auth/handler';
