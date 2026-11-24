import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const FlagQuizApp());
}

class FlagQuizApp extends StatelessWidget {
  const FlagQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Угадай флаг',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Угадай флаг',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF1E3C72),
          elevation: 0,
        ),
        body: const GradientContainer(),
      ),
    );
  }
}