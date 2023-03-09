import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/firebase_auth_const.dart';
import '../widgets/auth_widgets.dart';

class EmailLinkSignInPage extends StatelessWidget {
  const EmailLinkSignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EmailLinkSignInScreen(
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          context.pushReplacement('/panel/sign-in');
        }),
      ],
      provider: emailLinkProviderConfig,
      headerMaxExtent: 200,
      headerBuilder: headerIcon(Icons.link),
      sideBuilder: sideIcon(Icons.link),
    );
  }
}
