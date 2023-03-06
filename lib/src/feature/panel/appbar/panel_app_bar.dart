import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:provider/provider.dart';

import '../../../../gen/assets.gen.dart';
import '../../../constant/icon_size.dart';
import '../../../constant/padding_size.dart';
import '../../../theme.dart';

class PanelAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PanelAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
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
    return AppBar(
      backgroundColor: appTheme.mode == ThemeMode.dark
          ? fluent.Colors.grey
          : fluent.Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(lowPadding),
        child: Image.asset(Assets.sources.logo.path),
      ),
      automaticallyImplyLeading: false,
      actions: [
        buildIconButton(
          Icons.notifications,
          onPressed: () {
            appTheme.mode = appTheme.mode == ThemeMode.dark
                ? ThemeMode.light
                : ThemeMode.dark;
          },
        ),
        buildIconButton(Icons.person_2),
        buildIconButton(Icons.exit_to_app),
      ],
    );
  }

  Widget buildIconButton(IconData icon, {bool disable = false, onPressed}) {
    final appTheme = context.watch<AppTheme>();

    return fluent.IconButton(
      icon: Icon(
        icon,
        size: appBarIconSize,
        color: appTheme.mode == ThemeMode.dark
            ? fluent.Colors.white
            : fluent.Colors.grey,
      ),
      onPressed:
          disable ? null : onPressed ?? () => debugPrint('pressed button'),
    );
  }
}
