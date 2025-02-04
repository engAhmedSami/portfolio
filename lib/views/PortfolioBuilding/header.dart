import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class Header extends StatelessWidget {
  final ScrollController scrollController;

  const Header({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [
            Color(0xFF101012),
            Color.fromARGB(255, 51, 52, 83),
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
            style: AppStyles.styleSemiBold24.copyWith(
              color: Colors.white24,
            ),
          ),
          Row(
            children: [
              _buildNavItem('Home', () => _scrollToSection(0)),
              _buildNavItem('About', () => _scrollToSection(1)),
              _buildNavItem('Education', () => _scrollToSection(2)),
              _buildNavItem('Skills', () => _scrollToSection(3)),
              _buildNavItem('Services', () => _scrollToSection(4)),
              _buildNavItem('Projects', () => _scrollToSection(5)),
              _buildNavItem('Contact', () => _scrollToSection(6)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, void Function()? onPressed) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: AppStyles.styleMedium16.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  void _scrollToSection(int sectionIndex) {
    double position = sectionIndex * 500; // Adjust based on section height
    scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
