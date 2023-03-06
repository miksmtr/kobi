import 'package:fluent_ui/fluent_ui.dart';

import '../feature/panel/home.dart';

class Routes {
  static Map<String, WidgetBuilder>? get routes {
    return {
      '/': (context) => HomePage(),
      "/login": (context) => const Text(
            "login",
            style: TextStyle(color: Colors.black),
          )
    };
  }
}
