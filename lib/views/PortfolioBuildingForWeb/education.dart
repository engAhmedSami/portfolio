import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              EducationCard(
                title: "Bachelor of Computer And Communication Engineering",
                institution: "Mansoura University, Egypt",
                year: "Graduation Year: 2025",
                details:
                    "A comprehensive program covering software development, algorithms, data structures, databases, and computer networks.",
                specialization: "Specialization: Software Engineering and AI",
              ),
              EducationCard(
                title: "ITI Flutter Training",
                institution: "Information Technology Institute (ITI), Egypt",
                year: "Completion Date: 2024",
                details:
                    "Intensive training focused on mobile app development with Flutter, covering topics such as UI/UX design, API integration, and cross-platform development.",
                specialization:
                    "Technologies Learned: Dart, Flutter, Firebase, REST APIs",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String title;
  final String institution;
  final String year;
  final String details;
  final String specialization;

  const EducationCard({
    super.key,
    required this.title,
    required this.institution,
    required this.year,
    required this.details,
    required this.specialization,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF0e0e10),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            // Institution
            Text(
              institution,
              style: AppStyles.styleRegular16.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            // Year
            Text(
              year,
              style: AppStyles.styleRegular16.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            // Details
            Text(
              details,
              style: AppStyles.styleRegular16.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            // Specialization
            Text(
              specialization,
              style: AppStyles.styleRegular16.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
