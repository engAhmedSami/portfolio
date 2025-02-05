import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class Header extends StatelessWidget {
  final ScrollController scrollController;

  const Header({super.key, required this.scrollController});

  void _scrollToSection(double offset) {
    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF101012).withValues(
              alpha: 0.7,
            ),
            const Color.fromARGB(255, 51, 52, 83).withValues(
              alpha: 0.7,
            ),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ahmed Sami Ahmed',
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white70),
          ),
          Row(
            children: [
              _buildNavItem('Home', 0),
              _buildNavItem('About', 600),
              _buildNavItem('Education', 1100),
              _buildNavItem('Skills', 1600),
              _buildNavItem('Services', 2100),
              _buildNavItem('Projects', 2750),
              _buildNavItem('Testimonials', 3900),
              _buildNavItem('Contact', 4500),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, double offset) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () => _scrollToSection(offset),
        child: Text(
          title,
          style: AppStyles.styleMedium16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
