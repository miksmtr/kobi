import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../gen/assets.gen.dart';
import '../../../constant/padding_size.dart';
import '../../../theme.dart';
import '../../authentication/pages/auth_provider.dart';

class PanelAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PanelAppBar({
    Key? key,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _PanelAppBarState createState() => _PanelAppBarState();
}

class _PanelAppBarState extends State<PanelAppBar> {
  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    final authProvider = context.watch<CAuthProvider>();
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(lowPadding),
        child: Image.asset(Assets.sources.logo.path),
      ),
      actions: [
        _buildProfileCompleteButton(context, authProvider),
        _buildNotificationButton(appTheme),
        _buildProfileButton(),
        _buildSignOutButton(context),
      ],
    );
  }

  Widget _buildProfileCompleteButton(
      BuildContext context, CAuthProvider authProvider) {
    if (authProvider.platformUser!.profileCompleted) {
      return Text(
          "${authProvider.platformUser != null ? authProvider.platformUser!.email : null}");
    } else {
      return OutlinedButton(
          onPressed: () {
            context.pushReplacement('/panel/settings');
          },
          child: Text("Profilini Tamamla!"));
    }
  }

  IconButton _buildNotificationButton(AppTheme appTheme) {
    return IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        appTheme.mode =
            appTheme.mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      },
    );
  }

  IconButton _buildProfileButton() {
    return IconButton(
      icon: Icon(Icons.person),
      onPressed: () {},
    );
  }

  IconButton _buildSignOutButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      onPressed: () async {
        await FirebaseUIAuth.signOut(context: context);
        context.pushReplacement('/panel/sign-in');
      },
    );
  }
}
