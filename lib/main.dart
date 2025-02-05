import 'package:flutter/material.dart';
import 'package:portfolio/views/dash_board_view.dart';

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
