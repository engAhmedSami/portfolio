import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi,\nI'm Ahmed Sami Ahmed",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Software Engineer || Flutter Developer",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  'Building innovative solutions to solve real-world problems.',
                  style:
                      AppStyles.styleRegular16.copyWith(color: Colors.white54),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.code,
                        color: Colors.blueGrey, size: 35),
                    SizedBox(width: 10),
                    Icon(FontAwesomeIcons.android,
                        color: Colors.blueGrey, size: 35),
                    SizedBox(width: 10),
                    Icon(FontAwesomeIcons.shieldHalved,
                        color: Colors.blueGrey, size: 35),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Get in touch",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // القسم الخاص بالصورة
          Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/image/flutterlogo.png', // اسم ملف الصورة
                  height: 400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
