import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import '../../../constant/firebase_auth_const.dart';
import '../widgets/auth_widgets.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    super.key,
    required this.arguments,
  });

  final Map<String, dynamic>? arguments;

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordScreen(
      email: arguments?['email'],
      headerMaxExtent: 200,
      headerBuilder: headerIcon(Icons.lock),
      sideBuilder: sideIcon(Icons.lock),
    );
  }
}
