import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0, vertical: 20.0), // تقليل المسافات
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // محاذاة الصورة والنص
        children: [
          // الصورة
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/image/im.jpg', // وضع مسار الصورة
              height: 150, // تقليل حجم الصورة للأجهزة الصغيرة
              width: 150, // تقليل العرض
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20), // مسافة بين الصورة والنص
          // النص
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello! I'm Ahmed Sami, a Software Engineer specializing in mobile app development.",
                  style: AppStyles.styleSemiBold24.copyWith(
                    color: Colors.white70,
                    fontSize: 18, // تقليل حجم الخط على الهواتف
                  ),
                  textAlign: TextAlign.start, // محاذاة النص إلى اليسار
                ),
                const SizedBox(height: 10),
                Text(
                  "I enjoy building scalable and user-friendly applications to solve real-world problems. "
                  "\nWith a strong passion for technology and a mindset for continuous improvement,\nI aim to deliver "
                  "innovative and high-quality solutions.",
                  style: TextStyle(
                    fontSize: 14, // تقليل حجم الخط
                    color: Colors.white54,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.start, // محاذاة النص إلى اليسار
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
