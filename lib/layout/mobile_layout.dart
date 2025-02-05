import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/contact.dart';
import 'package:portfolio/views/PortfolioBuildingForWeb/projects.dart';
import 'package:portfolio/views/mobile/widget/about_mobile.dart';
import 'package:portfolio/views/mobile/widget/mobile_cover.dart';
import 'package:portfolio/views/mobile/widget/mobile_education.dart';
import 'package:portfolio/views/mobile/widget/mobile_service.dart';
import 'package:portfolio/views/mobile/widget/mobile_skills.dart';
import 'package:portfolio/views/mobile/widget/mobile_testimoials.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

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
              children: [
                MobileCover(),
                SizedBox(height: 60),
                AboutMobile(),
                SizedBox(height: 60),
                MobileEducation(),
                SizedBox(height: 60),
                MobileSkills(),
                SizedBox(height: 60),
                MobileService(),
                SizedBox(height: 60),
                Projects(),
                SizedBox(height: 60),
                MobileTestimonials(),
                SizedBox(height: 60),
                Contact(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
