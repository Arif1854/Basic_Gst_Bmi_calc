import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 170;
  double weight = 70;
  double bmi = 0;


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                Text(
                  'Height (cm)',
                  style: TextStyle(fontSize: 18),
                ),
                Slider(
                  value: height,
                  min: 100,
                  max: 250,
                  divisions: 150,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
                Text(
                  height.toStringAsFixed(0),
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Weight (kg)',
                  style: TextStyle(fontSize: 18),
                ),
                Slider(
                  value: weight,
                  min: 30,
                  max: 150,
                  divisions: 120,
                  onChanged: (value) {
                    setState(() {
                      weight = value;
                    });
                  },
                ),
                Text(
                  weight.toStringAsFixed(0),
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _calculateBMI,
                  child: Text('Calculate BMI'),
                ),
                SizedBox(height: 20),
                Text(
                  'Your BMI: ${bmi.toStringAsFixed(1)}',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _calculateBMI() {
    setState(() {
      bmi = weight / ((height / 100) * (height / 100));
    });
  }
}

