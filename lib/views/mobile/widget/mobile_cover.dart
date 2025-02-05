import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';

class MobileCover extends StatelessWidget {
  const MobileCover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  "This is your developer",
                  style: AppStyles.styleSemiBold20.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Ahmed Sami",
                  style: AppStyles.styleBold40.copyWith(
                    color: Color(0XFF173dc2),
                    fontSize: 28, // Adjusted font size for mobile
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Software Engineer || Flutter Developer",
                  style: TextStyle(
                    fontSize: 18, // Adjusted font size for mobile
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Building innovative solutions to solve real-world problems.',
                  style: TextStyle(
                    fontSize: 14, // Adjusted font size for mobile
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(height: 20),
                // Icons (Technology icons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(FontAwesomeIcons.code,
                        color: Colors.blueGrey, size: 30),
                    const SizedBox(width: 10),
                    Icon(FontAwesomeIcons.android,
                        color: Colors.blueGrey, size: 30),
                    const SizedBox(width: 10),
                    Icon(FontAwesomeIcons.shieldHalved,
                        color: Colors.blueGrey, size: 30),
                  ],
                ),
                const SizedBox(height: 30),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
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
                      child: Text(
                        'Discuss for Projects',
                        style: AppStyles.styleSemiBold16
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View Portfolios',
                          style: AppStyles.styleMedium16
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward, color: Colors.white70),
                      ],
                    ),
                  ),
                ])
              ],
            ),
          ),
          // Image Section
          const SizedBox(height: 30),
          Image.asset(
            'assets/image/flutterlogo.png',
            height: MediaQuery.of(context).size.height *
                0.4, // Adjusted image height for mobile
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
