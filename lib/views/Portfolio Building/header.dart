import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [
            Color(0xFF1A1B2F),
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
          // Navigation Links
          Row(
            children: [
              _buildNavItem('Home'),
              _buildNavItem('Skills'),
              _buildNavItem('Projects'),
              _buildNavItem('Contact'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextButton(
        onPressed: () {
          // Action on navigation click
        },
        child: Text(title,
            style: AppStyles.styleMedium16.copyWith(color: Colors.white)),
      ),
    );
  }
}
