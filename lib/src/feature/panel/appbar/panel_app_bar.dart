import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../gen/assets.gen.dart';
import '../../../constant/padding_size.dart';
import '../../../theme.dart';

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
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(lowPadding),
        child: Image.asset(Assets.sources.logo.path),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            appTheme.mode = appTheme.mode == ThemeMode.dark
                ? ThemeMode.light
                : ThemeMode.dark;
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {},
        ),
      ],
    );
  }
}
