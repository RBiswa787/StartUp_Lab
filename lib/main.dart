import 'package:flutter/material.dart';
import 'package:renameit/constants.dart';
import 'package:renameit/Screens/welcome_screen.dart';
import 'package:renameit/Screens/about.dart';
import 'package:renameit/Screens/contact.dart';
import 'package:renameit/drawer.dart';

void main() {
  runApp(MyApp());
}

Size size;

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
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
      },
    );
  }
}
