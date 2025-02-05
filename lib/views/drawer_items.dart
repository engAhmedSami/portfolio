import 'package:flutter/material.dart';
import 'package:portfolio/active_and_inactive.dart';
import 'package:portfolio/drawer_item_model.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
