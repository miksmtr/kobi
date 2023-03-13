import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:kobi/src/utill/shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';
import 'src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'src/constant/firebase_auth_const.dart';

firebaseTest() async {
  //final userRef = UserCollectionReference();
  //FirebaseStorageRepository firebaseStorageRepository =
  //  FirebaseStorageRepository();
  //File file = await ImageHelper.getImage('test.png', assetsName: "assets/test");

  /*  String data = await File("assets/test/test.png").readAsString();

  Reference _reference = FirebaseStorage.instance.ref('test');
  await _reference.putString("dsdsdsdsds");
  await _reference
      .child("path")
      .putString(
        data,
        //SettableMetadata(contentType: 'image/png'),
      )
      .whenComplete(() async {
    await _reference.getDownloadURL().then((value) {
      //uploadedPhotoUrl = value;
    });
  }); */

  //await firebaseStorageRepository.saveWithString(data, path: "test");
  /*  var response = await userRef.add(User(
      name: "Muzaffer",
      lastname: "Bulut",
      brithday: DateTime(1994),
      email: "muzaffer652@gmail.com",
      profileImage: StorageFile(
          url: "test_url",
          path: "upload_path",
          metadata: {'newPost': 'true'}))); */
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SharedPreferencesRepository.preferencesInit();
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    cacheSizeBytes: 100 * 1024 * 1024,
    persistenceEnabled: true,
  );

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    emailLinkProviderConfig,
    GoogleProvider(clientId: GOOGLE_CLIENT_ID),
  ]);
  await firebaseTest();

  runApp(const MyAppWidget());
}

/// Checks if the current environment is a desktop environment.
bool get kIsWebisDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}
