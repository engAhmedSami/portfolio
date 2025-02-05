import 'package:flutter/material.dart';
import 'package:portfolio/layout/adaptive_layout_widget.dart';
import 'package:portfolio/layout/mobile_layout.dart';
import 'package:portfolio/layout/tablet_layout.dart';
import 'package:portfolio/views/drawer/custom_drawer.dart';
import 'package:portfolio/layout/web_layout.dart';
import 'package:portfolio/layout/size_config.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff0a0a0c),
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff173dc2),
                ),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        desktopLayout: (context) => const MyHomePage(),
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
