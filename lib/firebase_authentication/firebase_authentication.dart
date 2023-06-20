import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quizappfirebase/authentication_screens/login.dart';

  class FirebaseAuthMethods {
    Future registerWithEmail(email, password, context) async {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (credential.user!.uid.isNotEmpty) {
          print("work");

          Navigator.push(
              context, MaterialPageRoute(builder: (_) => Login_Screen()));
        } else
          print("Not work");
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }