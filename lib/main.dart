import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Page;
import 'package:flutter/foundation.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:system_theme/system_theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:window_manager/window_manager.dart';
import 'src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await firebaseTest();
  if (!kIsWeb &&
      [
        TargetPlatform.windows,
        TargetPlatform.android,
      ].contains(defaultTargetPlatform)) {
    SystemTheme.accentColor.load();
  }

  setPathUrlStrategy();

  if (isDesktop) {
    await flutter_acrylic.Window.initialize();
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(
        TitleBarStyle.hidden,
        windowButtonVisibility: false,
      );
      await windowManager.setSize(const Size(755, 545));
      await windowManager.setMinimumSize(const Size(350, 600));
      await windowManager.center();
      await windowManager.show();
      await windowManager.setPreventClose(true);
      await windowManager.setSkipTaskbar(false);
    });
  }
  runApp(const MyAppWidget());
}

/// Checks if the current environment is a desktop environment.
bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}
