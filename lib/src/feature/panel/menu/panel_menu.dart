import 'package:flutter/material.dart';
import 'package:kobi/src/feature/panel/menu/menu_item.dart';
import 'package:kobi/src/feature/panel/menu/menu_item_list.dart';
import 'package:kobi/src/feature/panel/menu/menu_item_model.dart';
import 'package:provider/provider.dart';

import '../../../theme.dart';
import 'package:go_router/go_router.dart';

class PanelMenu extends StatelessWidget {
  PanelMenu({super.key});
  BuildContext? _mContext;
  @override
  Widget build(BuildContext context) {
    _mContext = context;
    final appTheme = context.watch<AppTheme>();
    return Container(
      // color: appTheme.mode == ThemeMode.dark ? Colors.grey : Colors.white,
      child: ListView.builder(
          itemCount: menuItemList.length,
          itemBuilder: (context, index) {
            return buildMenuItem(menuItemList[index]);
          }),
    );
  }

  Widget buildMenuItem(MenuItemModel itemModel) {
    _mContext!.read;
    return MenuItem(itemModel.icon, itemModel.text ?? '', () {
      _mContext!.go(itemModel.route);
    });
  }
}
