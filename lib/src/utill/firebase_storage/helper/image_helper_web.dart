import 'dart:async';
import 'dart:html' as html;

import 'package:flutter/services.dart';


class ImageHelperWeb {
  static Future<html.Blob> getImageBlobFromAssets(String name,
      {String assetsName = 'assets'}) async {
    String path = '$assetsName/$name';
    print(path);
    final byteData = await rootBundle.load(path);
    final imagebyte = byteData.buffer.asUint8List();
    final blob = html.Blob(<dynamic>[imagebyte], 'application/octet-stream');
    return blob;
  }
}

Future<dynamic> getImageFromAsset(String name,
        {String assetsName = 'assets'})async =>
    await ImageHelperWeb.getImageBlobFromAssets(name, assetsName: assetsName);
