import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kobi/main.dart';
import 'package:kobi/src/feature/panel/appbar/panel_app_bar.dart';
import 'package:kobi/src/feature/panel/bottom_bar/bottom_bar.dart';
import 'package:kobi/src/feature/panel/menu/panel_menu.dart';
import 'package:provider/provider.dart';

import '../../authentication/pages/auth_provider.dart';

class GeneralWidget extends StatefulWidget {
  final Widget body;
  const GeneralWidget({super.key, required this.body});

  @override
  State<GeneralWidget> createState() => _GeneralWidgetState();
}

class _GeneralWidgetState extends State<GeneralWidget> {
  String title = "'";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<CAuthProvider>();
    authProvider.getPlatformUser();
    return authProvider.platformUser != null
        ? Scaffold(
            appBar: PanelAppBar(),
            body: Row(
              children: [PanelMenu(), Expanded(child: widget.body)],
            ),
            bottomNavigationBar: BottomBar(),
          )
        : CircularProgressIndicator();
  }
}
