import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/views/Portfolio%20Building/about.dart';
import 'package:portfolio/views/Portfolio%20Building/cover.dart';
import 'package:portfolio/views/Portfolio%20Building/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      backgroundColor: AppColors.darkPrimaryColor,
      body: ListView(
        controller: scrollController, // تمرير نفس ScrollController
        children: [
          Header(
              scrollController:
                  scrollController), // تمرير ScrollController إلى الهيدر
          const SizedBox(height: 100),
          const Cover(),
          const SizedBox(height: 100),
          const About(),
        ],
      ),
    );
  }
}
