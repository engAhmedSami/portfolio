import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/dash_board_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Sami Ahmed',
      theme: ThemeData.dark(),
      home: DashBoardView(),
    );
  }
}

class ScreenWidthPrinter extends StatelessWidget {
  const ScreenWidthPrinter({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // طباعة عرض الشاشة
    log("Screen Width: $screenWidth");

    return Scaffold(
      appBar: AppBar(title: const Text('Screen Width Printer')),
      body: Center(
        child: Text('Check the console for the screen width'),
      ),
    );
  }
}
