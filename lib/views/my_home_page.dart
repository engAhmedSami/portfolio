import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/views/Portfolio%20Building/about.dart';
import 'package:portfolio/views/Portfolio%20Building/cover.dart';
import 'package:portfolio/views/Portfolio%20Building/education.dart';
import 'package:portfolio/views/Portfolio%20Building/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      backgroundColor: AppColors.darkPrimaryColor,
      body: Stack(
        children: [
          ListView(
            controller: scrollController,
            children: const [
              SizedBox(height: 190), // مساحة تترك مكان الهيدر
              Cover(),
              SizedBox(height: 120),
              About(),
              SizedBox(height: 120),
              Education(),
              SizedBox(height: 120),
            ],
          ),
          // الهيدر المثبت
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(
              scrollController: scrollController, // تمرير ScrollController
            ),
          ),
        ],
      ),
    );
  }
}
