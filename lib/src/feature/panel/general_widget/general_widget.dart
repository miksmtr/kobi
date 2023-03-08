import 'package:flutter/material.dart';
import 'package:kobi/src/feature/panel/appbar/panel_app_bar.dart';
import 'package:kobi/src/feature/panel/bottom_bar/bottom_bar.dart';
import 'package:kobi/src/feature/panel/menu/panel_menu.dart';

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
    return Scaffold(
      appBar: PanelAppBar(),
      body: Row(
        children: [
          SizedBox(
            width: 200,
            child: PanelMenu(),
          ),
          Expanded(child: widget.body)
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
