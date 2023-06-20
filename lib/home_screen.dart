import 'package:flutter/material.dart';

class HOme_Screen extends StatefulWidget {
  const HOme_Screen({Key? key}) : super(key: key);

  @override
  State<HOme_Screen> createState() => _HOme_ScreenState();
}

class _HOme_ScreenState extends State<HOme_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Home"),),);
  }
}
