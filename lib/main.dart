import 'package:flutter/material.dart';
import 'package:renameit/Screens/aboutAuth.dart';
import 'package:renameit/Screens/contactAuth.dart';
import 'package:renameit/constants.dart';
import 'package:renameit/Screens/welcome_screen.dart';
import 'package:renameit/Screens/about.dart';
import 'package:renameit/Screens/contact.dart';
import 'package:renameit/drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:renameit/Screens/authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/authentication': (context) => Authentication(),
        '/aboutauth': (context) => AboutAuth(),
        'contactauth': (context) => ContactAuth(),
      },
    );
  }
}
