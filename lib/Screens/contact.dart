import 'package:flutter/material.dart';
import 'package:renameit/main.dart';
import 'package:renameit/drawer.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      drawer: Drawer(child: Sidebar()),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.cyan),
      toolbarHeight: 55,
      elevation: 10,
      backgroundColor: Colors.indigo[900],
      title: Text("App Name",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          )),
      /*actions: [
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Text("About",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 14,
                ))),
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: Text("Contact Us",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 14,
                ))),
        IconButton(
          icon: Icon(
            Icons.person_sharp,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          },
        )
      ],*/
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(65),
        height: size.height * 0.5,
        color: Colors.white,
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Contact Us",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold)),
              const ListTile(
                  leading: Icon(Icons.email_sharp, size: 25),
                  title: Text("abc@gmail.com",
                      style: TextStyle(fontSize: 16, color: Colors.orange))),
              const ListTile(
                  leading: Icon(Icons.phone_android_rounded, size: 25),
                  title: Text("1800-000-xx",
                      style: TextStyle(fontSize: 16, color: Colors.orange))),
            ]));
  }
}
