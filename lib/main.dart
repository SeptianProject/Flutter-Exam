import 'package:flutter/material.dart';
import 'package:flutter_exam/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sora'),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingPage(),
    );
  }
}
