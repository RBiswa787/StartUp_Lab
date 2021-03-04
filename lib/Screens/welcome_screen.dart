import 'package:flutter/material.dart';
import 'package:renameit/background.dart';
import 'package:renameit/main.dart';
import 'package:renameit/drawer.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          //appBar: buildAppBar(context),
          body: Body(),
          drawer: Drawer(child: Sidebar()),
        )
      ],
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
            fontFamily: "fantasy", //default
          )),
      /*actions: [
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
    return Column(
      children: [
        /*Container(
          height: size.height * 0.45,
          //color: Colors.orange,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/startup-life-concept-illustration_114360-1068-removebg-preview.png'),
                fit: BoxFit.cover),
          ),
        ),*/
        Container(
          color: Colors.transparent,
          height: size.height * 0.15,
        ),
        Container(
          height: size.height * 0.3,
          color: Colors.transparent,
          child: Text(
            "StartUp Labs",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          height: size.height * 0.3,
        ),
        Container(
          height: size.height * 0.06,
          width: size.width * 0.5,
          color: Colors.orange[400],
          child: OutlineButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pushNamed(context, '/authentication');
              },
              child: Text("Proceed to Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ))),
        )
      ],
    );
  }
}
