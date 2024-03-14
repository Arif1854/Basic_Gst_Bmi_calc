import 'package:flutter/material.dart';

class GstCalculator extends StatefulWidget {
  @override
  _GstCalculatorState createState() => _GstCalculatorState();
}

class _GstCalculatorState extends State<GstCalculator> {
  double price = 0;
  double gstRate = 0;
  double gstAmountInclusive = 0;
  double gstAmountExclusive = 0;
  double totalAmountInclusive = 0;
  double totalAmountExclusive = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('GST Calculator'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Price',
                ),
                onChanged: (value) {
                  setState(() {
                    price = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'GST Rate',
                ),
                onChanged: (value) {
                  setState(() {
                    gstRate = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Calculate'),
                onPressed: () {
                  setState(() {
                    // Calculate inclusive GST Amount
                    gstAmountExclusive = price * gstRate / 100;
                    // Calculate total amount inclusive of GST
                    totalAmountInclusive = price + gstAmountInclusive;
                    // Calculate exclusive GST Amount
                    gstAmountInclusive = (price * gstRate) / (100 + gstRate);
                    // Calculate total amount exclusive of GST
                    totalAmountExclusive = price;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text('Inclusive GST Amount: \u{20B9}${gstAmountInclusive.toStringAsFixed(2)}'),
              SizedBox(height: 8.0),
              Text('Inclusive Total Amount: \u{20B9}${totalAmountInclusive.toStringAsFixed(2)}'),
              SizedBox(height: 16.0),
              Text('Exclusive GST Amount: \u{20B9}${gstAmountExclusive.toStringAsFixed(2)}'),
              SizedBox(height: 8.0),
              Text('Exclusive Total Amount: \u{20B9}${totalAmountExclusive.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
