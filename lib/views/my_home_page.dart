import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/views/Portfolio%20Building/cover.dart';
import 'package:portfolio/views/Portfolio%20Building/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPrimaryColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Header(
            scrollController: ScrollController(),
          ),
          SizedBox(height: 100),
          Cover(),
        ],
      ),
    );
  }
}
