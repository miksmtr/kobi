import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

class CIconButton extends StatelessWidget {
  IconData icon;
  bool disable = false;
  final Function()? onPressed;
  final double _appBarIconSize = 24.0;
  CIconButton(
      {super.key, required this.icon, this.disable = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return fluent.IconButton(
      icon: Icon(
        icon,
        size: _appBarIconSize,
      ),
      onPressed:
          disable ? null : onPressed ?? () => debugPrint('pressed button'),
    );
  }
}
