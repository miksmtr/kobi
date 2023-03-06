import 'image_helper_stub.dart'
    if (dart.library.io) 'image_helper_native.dart'
    if (dart.library.js) 'image_helper_web.dart';

class ImageHelper {
  static Future<dynamic> getImage(String name,
          {String assetsName = 'assets'})async =>
await      getImageFromAsset(name, assetsName: assetsName);
}
