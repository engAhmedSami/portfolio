import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2.8, // ✅ تقليل نسبة العرض إلى الارتفاع
            children: [
              ServiceCard(
                icon: FontAwesomeIcons.mobile,
                title: 'Flutter Developer',
                description:
                    'Creating apps to help businesses scale up using Flutter.',
              ),
              ServiceCard(
                icon: FontAwesomeIcons.fire,
                title: 'Firebase Specialist',
                description:
                    'Implementing real-time databases, authentication, and cloud functions using Firebase.',
              ),
              ServiceCard(
                icon: FontAwesomeIcons.nodeJs,
                title: 'Node.js Developer',
                description:
                    'Building scalable backend services and APIs with Node.js.',
              ),
              ServiceCard(
                icon: FontAwesomeIcons.database,
                title: 'MongoDB Expert',
                description:
                    'Designing and optimizing NoSQL databases with MongoDB for high performance.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF0e0e10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0), // ✅ زيادة التباعد الداخلي
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // ✅ يجبر الـ Column على أخذ المساحة المطلوبة فقط
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.blue),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyles.styleBold20.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Expanded(
              // ✅ يجعل النص يتمدد دون تجاوز الحواف
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: AppStyles.styleRegular16.copyWith(color: Colors.white54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
