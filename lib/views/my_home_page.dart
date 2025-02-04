import 'package:flutter/material.dart';
import 'package:portfolio/views/Portfolio%20Building/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Header(), // عنصر الهيدر
        ],
      ),
    );
  }
}
