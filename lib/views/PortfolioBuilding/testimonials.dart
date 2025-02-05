import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = 2; // Default: 2 columns
              if (constraints.maxWidth < 800) {
                crossAxisCount = 1; // Single column on smaller screens
              }

              return GridView.count(
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2.8, // Adjusted to prevent overflow
                children: const [
                  TestimonialCard(
                    title: 'From a Startup Founder',
                    description:
                        'Working with John Smith was an absolute game-changer for our startup. He developed a sleek, high-performance Flutter app that exceeded our expectations. Highly recommended!',
                    author: '— Alice Johnson, Founder of TechNova',
                  ),
                  TestimonialCard(
                    title: 'From a Product Manager',
                    description:
                        'We hired John Smith to rebuild our mobile app using Flutter, and the results were phenomenal. The app is now faster and more responsive across iOS and Android.',
                    author: '— Basel Mohamed, Product Manager at Smart Store',
                  ),
                  TestimonialCard(
                    title: 'From a UX Designer',
                    description:
                        'Ahmed Sami implemented my designs perfectly and even suggested improvements for a better user experience. His Flutter expertise is unmatched!',
                    author: '— Rabea Shrief, UX Designer at Doner',
                  ),
                  TestimonialCard(
                    title: 'From a Small Business Owner',
                    description:
                        'Ahmed Sami built a user-friendly app for my business, helping us reach more customers. His communication was excellent, and he delivered on time and within budget.',
                    author: '— Emma Wilson, Owner of BakeHouse',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String title;
  final String description;
  final String author;

  const TestimonialCard({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.styleBold20.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Text(
                description,
                style: AppStyles.styleRegular16.copyWith(color: Colors.white70),
              ),
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
