import 'package:flutter/material.dart';

import '../general_widget/general_widget.dart';

class PanelHomePage extends StatefulWidget {
  const PanelHomePage({super.key});

  @override
  State<PanelHomePage> createState() => _PanelHomePageState();
}

class _PanelHomePageState extends State<PanelHomePage> {
  String title = "'";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text("PanellHomePage");
  }
}
