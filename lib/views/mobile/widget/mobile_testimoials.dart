import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class MobileTestimonials extends StatelessWidget {
  const MobileTestimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 20), // ✅ تقليل التباعد لدعم الهواتف
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount =
                  constraints.maxWidth < 800 ? 1 : 2; // ✅ دعم الأجهزة الصغيرة

              return GridView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // ✅ منع التمرير داخل `GridView`
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: constraints.maxWidth < 800
                      ? 1.8
                      : 2.5, // ✅ تحسين النسبة للموبايل
                ),
                itemCount: testimonials.length,
                itemBuilder: (context, index) {
                  final testimonial = testimonials[index];
                  return TestimonialCardg(
                    title: testimonial['title']!,
                    description: testimonial['description']!,
                    author: testimonial['author']!,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

// ✅ قائمة التوصيات
final List<Map<String, String>> testimonials = [
  {
    "title": 'From a Startup Founder',
    "description":
        'Working with John Smith was an absolute game-changer for our startup. He developed a sleek, high-performance Flutter app that exceeded our expectations. Highly recommended!',
    "author": '— Alice Johnson, Founder of TechNova',
  },
  {
    "title": 'From a Product Manager',
    "description":
        'We hired John Smith to rebuild our mobile app using Flutter, and the results were phenomenal. The app is now faster and more responsive across iOS and Android.',
    "author": '— Basel Mohamed, Product Manager at Smart Store',
  },
  {
    "title": 'From a UX Designer',
    "description":
        'Ahmed Sami implemented my designs perfectly and even suggested improvements for a better user experience. His Flutter expertise is unmatched!',
    "author": '— Rabea Shrief, UX Designer at Doner',
  },
  {
    "title": 'From a Small Business Owner',
    "description":
        'Ahmed Sami built a user-friendly app for my business, helping us reach more customers. His communication was excellent, and he delivered on time and within budget.',
    "author": '— Emma Wilson, Owner of BakeHouse',
  },
];

class TestimonialCardg extends StatelessWidget {
  final String title;
  final String description;
  final String author;

  const TestimonialCardg({
    super.key,
    required this.title,
    required this.description,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF0e0e10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 6,
      shadowColor: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // ✅ منع `Column` من التمدد غير الضروري
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.styleBold20.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              // ✅ إزالة `Expanded` واستبداله بـ `Text` عادي لمنع الخطأ
              description,
              style: AppStyles.styleRegular16.copyWith(color: Colors.white70),
            ),
            const SizedBox(height: 12),
            Text(
              author,
              style: AppStyles.styleRegular16.copyWith(
                color: Colors.white54,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
