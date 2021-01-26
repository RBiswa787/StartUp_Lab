import 'package:flutter/material.dart';
import 'package:renameit/Screens/Welcome/welcome_screen.dart';
import 'package:renameit/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Auth', //may have consequences
      theme: ThemeData(
        primaryColor: kprimarylight,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
