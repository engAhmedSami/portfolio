import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';

class MobileService extends StatelessWidget {
  const MobileService({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20), // ✅ تقليل التباعد للموبايل
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // ✅ منع التمرير داخل GridView
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  screenWidth < 600 ? 1 : 2, // ✅ ضبط الأعمدة حسب الجهاز
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: screenWidth < 600
                  ? 2.5
                  : 2.8, // ✅ ضبط نسبة العرض/الارتفاع للموبايل
            ),
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              return ServiceCard(
                icon: service['icon'],
                title: service['title'],
                description: service['description'],
              );
            },
          ),
        ],
      ),
    );
  }
}

// ✅ قائمة بالخدمات
final List<Map<String, dynamic>> services = [
  {
    "icon": FontAwesomeIcons.mobile,
    "title": 'Flutter Developer',
    "description": 'Creating apps to help businesses scale up using Flutter.',
  },
  {
    "icon": FontAwesomeIcons.fire,
    "title": 'Firebase Specialist',
    "description":
        'Implementing real-time databases, authentication, and cloud functions.',
  },
  {
    "icon": FontAwesomeIcons.nodeJs,
    "title": 'Node.js Developer',
    "description": 'Building scalable backend services and APIs with Node.js.',
  },
  {
    "icon": FontAwesomeIcons.database,
    "title": 'MongoDB Expert',
    "description":
        'Designing and optimizing NoSQL databases with MongoDB for high performance.',
  },
];

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
        padding: const EdgeInsets.all(16.0), // ✅ تحسين التباعد
        child: Column(
          mainAxisSize: MainAxisSize.min, // ✅ منع تمدد `Column`
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue), // ✅ تكبير الأيقونة قليلاً
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyles.styleBold20.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              // ✅ إصلاح الخطأ بتحديد مرونة النص
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
