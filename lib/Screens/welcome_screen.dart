import 'package:flutter/material.dart';
import 'package:renameit/main.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context), body: SafeArea(child: Body()));
  }

  AppBar buildAppBar(context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 45,
      elevation: 10,
      backgroundColor: Colors.indigo[900],
      title: Text("App Name",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          )),
      actions: [
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/about',
              );
            },
            child: Text("About",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 13,
                ))),
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: Text("Contact Us",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 13,
                ))),
        IconButton(
          icon: Icon(
            Icons.person_sharp,
            color: Colors.white,
            size: 15,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          },
        )
      ],
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.45,
          //color: Colors.orange,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/startup-life-concept-illustration_114360-1068-removebg-preview.png'),
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
