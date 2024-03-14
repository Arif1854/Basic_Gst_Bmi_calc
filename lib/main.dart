import 'package:calculator/calculator/bmi_calc.dart';
import 'package:calculator/calculator/calc.dart';
import 'package:calculator/calculator/gst_calc.dart';
import 'package:calculator/log_page/log_page.dart';
import 'package:calculator/nav/nav_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculator(
      ),
    );
  }
}
