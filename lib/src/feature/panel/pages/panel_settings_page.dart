import 'package:flutter/material.dart';

import '../general_widget/general_widget.dart';

class PanelSettingsPage extends StatefulWidget {
  const PanelSettingsPage({
    super.key,
  });

  @override
  State<PanelSettingsPage> createState() => _PanelSettingsPageState();
}

class _PanelSettingsPageState extends State<PanelSettingsPage> {
  String title = "'";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text("PanelSettingsPage");
  }
}
