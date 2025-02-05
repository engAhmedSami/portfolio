import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/about.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/contact.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/cover.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/education.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/header.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/projects.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/skills.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/testimonials.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/whatwedo.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      backgroundColor: AppColors.darkPrimaryColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: const [
                SizedBox(height: 170),
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
                Testimonials(),
                SizedBox(height: 120),
                Contact(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(scrollController: scrollController),
          ),
        ],
      ),
    );
  }
}
