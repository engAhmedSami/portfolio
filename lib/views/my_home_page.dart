import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/views/PortfolioBuilding/about.dart';
import 'package:portfolio/views/PortfolioBuilding/cover.dart';
import 'package:portfolio/views/PortfolioBuilding/education.dart';
import 'package:portfolio/views/PortfolioBuilding/header.dart';
import 'package:portfolio/views/PortfolioBuilding/projects.dart';
import 'package:portfolio/views/PortfolioBuilding/skills.dart';
import 'package:portfolio/views/PortfolioBuilding/whatwedo.dart';

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
              SizedBox(height: 190),
              Cover(),
              SizedBox(height: 120),
              About(),
              SizedBox(height: 120),
              Education(),
              SizedBox(height: 120),
              Skills(),
              SizedBox(height: 120),
              Services(),
              SizedBox(height: 120),
              Projects(),
              SizedBox(height: 120),
              Services(),
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
