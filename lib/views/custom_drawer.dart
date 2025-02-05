import 'package:flutter/material.dart';
import 'package:portfolio/views/drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: DrawerItemsListView(),
    );
  }
}
