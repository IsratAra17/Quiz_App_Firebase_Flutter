
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:quizappfirebase/authentication_screens/registration.dart';
import 'package:quizappfirebase/constants.dart';
import 'package:quizappfirebase/home_screen.dart';

import 'authentication_screens/login.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  }

  else{
    await Firebase.initializeApp();
  }
  runApp( MyApp('/login_screen'));
}


class MyApp extends StatelessWidget {
  final String FirstRoute;
  MyApp(this.FirstRoute);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_screen',
      routes: {
        '/registration_screen': (context) =>Registration_Screen(),
        '/login_screen': (context) =>Login_Screen(),
        '/home_screen': (context) =>HOme_Screen(),
      },
    );
  }
}