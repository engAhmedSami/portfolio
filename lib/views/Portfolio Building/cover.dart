import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/app_styles.dart';

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
          // Left Side: Text and Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  "This is your developer",
                  style: AppStyles.styleRegular50.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Ahmed Sami",
                  style: AppStyles.styleBold40.copyWith(
                    color: Color(0XFF173dc2),
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
                const SizedBox(height: 10),
                const Text(
                  'Building innovative solutions to solve real-world problems.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.code,
                        color: Colors.blueGrey, size: 35),
                    const SizedBox(width: 10),
                    Icon(FontAwesomeIcons.android,
                        color: Colors.blueGrey, size: 35),
                    const SizedBox(width: 10),
                    Icon(FontAwesomeIcons.shieldHalved,
                        color: Colors.blueGrey, size: 35),
                  ],
                ),
                const SizedBox(height: 50),
                // Buttons Row
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF6A11CB),
                            Color(0xFF2575FC),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Action for "Discuss for Projects"
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Discuss for Projects',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // "View Portfolios" Link with Arrow
                    GestureDetector(
                      onTap: () {
                        // Action for "View Portfolios"
                      },
                      child: Row(
                        children: [
                          Text(
                            'View Portfolios',
                            style: AppStyles.styleMedium16
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white70,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Right Side: Image
          Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Image.asset(
              'assets/image/flutterlogo.png',
              height: 350,
            ),
          ),
        ],
      ),
    );
  }
}
