import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/image/im.jpg', // ضع مسار الصورة هنا
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20),
              // النص
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      "Hello! I'm Ahmed Sami, a Software Engineer specializing in mobile app development.",
                      style: AppStyles.styleSemiBold24.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "I enjoy building scalable and user-friendly applications to solve real-world problems. "
                      "\nWith a strong passion for technology and a mindset for continuous improvement,\nI aim to deliver "
                      "innovative and high-quality solutions.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
