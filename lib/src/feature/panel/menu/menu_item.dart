import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  IconData icon;
  String title;
  Function() onPressed;
  bool selected;
  bool hideTitle;
  MenuItem(this.icon, this.title, this.onPressed,
      {super.key, this.selected = false, this.hideTitle = false});

  @override
  Widget build(BuildContext context) {
    if (hideTitle) {
      return ListTile(
        leading: Icon(icon),
        onTap: onPressed,
        selected: selected,
      );
    }
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onPressed,
      selected: selected,
    );
  }
}
