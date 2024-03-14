import 'package:calculator/nav/nav_page.dart';
import 'package:flutter/material.dart';

class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {

  final formKey = GlobalKey<FormState>();

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool boolVisibility = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Text('Log In',style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              onChanged: () {},
              child: Column(
                children: [
                  TextFormField(
                    controller: mailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your user name',
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Please enter your UserName';
                      }
                      return null ;
                    },
                  ),
                  SizedBox(height: 50,),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Please enter your Password';
                      }
                      else if(value.length <8)
                      {
                        return 'passwords must contains 8 characters';
                      }
                      return null;
                      // return null;
                    },
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 40,),
          TextButton(onPressed: () {
            if (formKey.currentState!.validate())  {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavPage()));
            }

          },
              child: Text('Login',style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 30
          ),))
        ],
      ),
    );
  }
}
