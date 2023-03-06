import 'package:flutter/material.dart';
import 'package:kobi/src/feature/panel/appbar/panel_app_bar.dart';
import 'package:kobi/src/feature/panel/bottom_bar/bottom_bar.dart';

class PanelHomePage extends StatefulWidget {
  const PanelHomePage({super.key});

  @override
  State<PanelHomePage> createState() => _PanelHomePageState();
}

class _PanelHomePageState extends State<PanelHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PanelAppBar(),
      body: Center(child: Text("CONTENT")),
      bottomNavigationBar: BottomBar(),
    );
  }
}
