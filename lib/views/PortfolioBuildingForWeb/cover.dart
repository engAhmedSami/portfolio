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
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 80), // تقليل المسافة الجانبية
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double scaleFactor = 1.0;
                  if (constraints.maxWidth < 600) {
                    scaleFactor =
                        0.8; // تحديد نسبة لتقليل الحجم عند الشاشات الصغيرة
                  }

                  double fontSizeTitle = 50 * scaleFactor;
                  double fontSizeSubtitle = 40 * scaleFactor;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        "This is your developer",
                        style: AppStyles.styleRegular50.copyWith(
                          color: Colors.white,
                          fontSize: fontSizeTitle, // تعديل الحجم
                        ),
                      ),
                      Text(
                        "Ahmed Sami",
                        style: AppStyles.styleBold40.copyWith(
                          color: Color(0XFF173dc2),
                          fontSize: fontSizeSubtitle, // تعديل الحجم
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
                      // Buttons Row or Column based on screen width
                      (constraints.maxWidth < 600)
                          ? Column(
                              children: [
                                // First button
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40 * scaleFactor,
                                          vertical:
                                              20 * scaleFactor), // تعديل الحجم
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
                                const SizedBox(height: 20),
                                // Second button (View Portfolio)
                                GestureDetector(
                                  onTap: () {},
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
                            )
                          : Row(
                              children: [
                                // First button
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40 * scaleFactor,
                                          vertical:
                                              20 * scaleFactor), // تعديل الحجم
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
                                // Second button (View Portfolio)
                                GestureDetector(
                                  onTap: () {},
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
                  );
                },
              ),
            ),
          ),
          // Right Side: Image
          Flexible(
            flex: 1,
            child: Image.asset(
              'assets/image/flutterlogo.png',
              height:
                  MediaQuery.of(context).size.height * 0.8, // Dynamic height
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
