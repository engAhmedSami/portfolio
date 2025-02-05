import 'package:flutter/material.dart';
import 'package:portfolio/views/drawer/drawer_item_model.dart';
import 'package:portfolio/views/drawer/drawer_items.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: "Home", icon: Icons.home),
    const DrawerItemModel(title: "About", icon: Icons.account_circle_outlined),
    const DrawerItemModel(title: "Education", icon: Icons.school),
    const DrawerItemModel(title: "Skills", icon: Icons.star),
    const DrawerItemModel(
        title: "Service", icon: Icons.settings_remote_outlined),
    const DrawerItemModel(title: "Projects", icon: Icons.work),
    const DrawerItemModel(title: "Testimonials", icon: Icons.rate_review),
    const DrawerItemModel(title: "Contact", icon: Icons.email_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItems(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
