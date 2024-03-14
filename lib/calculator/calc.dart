import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  TextEditingController controller = TextEditingController();

  String value1 = '';
  String value2 = '';
  String operator = '';
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  textAlign: TextAlign.end,
                  controller: controller,
                  readOnly: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if(click==false){
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('C',style: TextStyle(
                              color: Colors.red,
                              fontSize: 30,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      // onTap: () {
                      //   setState(() {
                      //     controller.text = '2';
                      //   });
                      // },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('( )',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      // onTap: () {
                      //   setState(() {
                      //     controller.text = '3';
                      //   });
                      // },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('%',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      // onTap: () {
                      //   setState(() {
                      //     controller.text = '%';
                      //   });
                      // },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
        
        
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '7';
                          controller.text = value2;
                        }


                        else{
                          value1 = '7';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('7',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '8';
                          controller.text = value2;
                        }
                        else{
                          value1 = '8';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('8',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '9';
                          controller.text = value2;
                        }
                        else{
                          value1 = '9';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('9',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.text = '3';
                        });
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('x',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
        
        
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '4';
                          controller.text = value2;
                        }
                        else{
                          value1 = '4';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('4',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '5';
                          controller.text = value2;
                        }
                        else{
                          value1 = '5';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('5',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '6';
                          controller.text = value2;
                        }
                        else{
                          value1 = '6';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('6',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        click = true ;
                        operator = '-' ;
                        controller.text = '-';
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('-',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
        
        
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (click == false){
                          value2 = '1';
                          controller.text = value2;
                        }
                        else{
                          value1="1";
                          controller.text=value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('1',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        if(click == false){
                          value2 = '2';
                          controller.text = value2;
                        }
                        else{
                          value1="2";
                          controller.text=value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child:  Text('2',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        if(click == false){
                          value2 = "3";
                          controller.text = value2;
                        }
                        else{
                          value1 = '3';
                          controller.text = value1;
                        }
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('3',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        click = true ;
                        operator = '+' ;
                        controller.text = '+';
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('+',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
        
        
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.text = '1';
                        });
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.text = '2';
                        });
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('0',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          controller.text = '3';
                        });
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade900,                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('.',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        double a=double.parse(value1);
                        double b=double.parse(value2);
                        double c=0;
        
                        if(operator == '+'){
                          c=a+b;
                        }
                        else if (operator == '-'){
                          c=b-a;
                        }
        
        
                          controller.text = c.toString();
                          value1 = controller.text;
                          click = false;
                          value2 = '';
        
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text('=',style: TextStyle(
                              color: Colors.white,
                              fontSize: 40
                          ),),
                        ),
                      ),
                    ),
        
        
                  ],
                ),
                SizedBox(height: 10,),
        
        
              ],
            ),
          ),
        ),
      ),

    );
  }
}
