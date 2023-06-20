


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizappfirebase/firebase_authentication/firebase_authentication.dart';

import '../style/style.dart';



class Registration_Screen extends StatefulWidget {
  const Registration_Screen({Key? key}) : super(key: key);

  @override
  State<Registration_Screen> createState() => _Registration_ScreenState();
}

class _Registration_ScreenState extends State<Registration_Screen> {

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  // @override
  // void dispose()
  // {
  //   super.dispose();
  //   emailController.dispose();
  //   passwordController.dispose();
  // }

  void registerUser(e,p)async {
    setState(() {
       FirebaseAuthMethods().registerWithEmail( e, p,context);
      print("Email: $e");
      print("pass: $p");

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: AppInputDecoration("Email Address"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: AppInputDecoration("Password"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: () {
                    var e=emailController.text;
                    var p=passwordController.text;
                    registerUser(e, p);
                  },
                  child: SuccessButtonChild('Login')),
            ),
          ],
        ),
      ),
    );  }
}
