import 'package:calculator/calculator/bmi_calc.dart';
import 'package:calculator/calculator/calc.dart';
import 'package:calculator/calculator/gst_calc.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

  int value = 0;

  final pages = [
    Calculator(),
    BMICalculator(),
    GstCalculator()
  ];

  void tap(a){
    setState(() {
      value = (a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[value],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: 'Normal'),
        BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: 'BMI'),
        BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: 'GST'
            ''),
      ],
        currentIndex: 0,
        onTap: tap,
      ),
    );
  }
}
