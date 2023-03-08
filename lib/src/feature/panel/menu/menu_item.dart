import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  IconData icon;
  String title;
  Function() onPressed;
  bool selected;
  MenuItem(
    this.icon,
    this.title,
    this.onPressed, {
    super.key,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onPressed,
      selected: selected,
    );
  }
}
