import 'package:flutter/material.dart';
import 'package:kobi/src/feature/panel/menu/menu_item_model.dart';

import 'menu_item.dart';

List<MenuItemModel> menuItemList = [
  MenuItemModel(icon: Icons.home, route: "/panel/home", text: "Home"),
  MenuItemModel(
      icon: Icons.settings, route: "/panel/settings", text: "Settings"),
];
