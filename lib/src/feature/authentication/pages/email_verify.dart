import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/firebase_auth_const.dart';
import '../widgets/auth_widgets.dart';

class EmailVerifiy extends StatelessWidget {
  const EmailVerifiy({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailVerificationScreen(
      headerBuilder: headerIcon(Icons.verified),
      sideBuilder: sideIcon(Icons.verified),
      actionCodeSettings: actionCodeSettings,
      actions: [
        EmailVerifiedAction(() {
          context.pushReplacement('/panel');
        }),
        AuthCancelledAction((context) {
          FirebaseUIAuth.signOut(context: context);
          context.pushReplacement('/panel');
        }),
      ],
    );
  }
}
