import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/firebase_auth_const.dart';
import '../widgets/auth_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.platform,
  });

  final TargetPlatform platform;

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      actions: [
        SignedOutAction((context) {
          context.pushReplacement('/panel');
        }),
      ],
      actionCodeSettings: actionCodeSettings,
      showMFATile: kIsWeb ||
          platform == TargetPlatform.iOS ||
          platform == TargetPlatform.android,
    );
  }
}
