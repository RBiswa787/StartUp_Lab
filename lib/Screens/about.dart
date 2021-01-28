import 'package:flutter/material.dart';
import 'package:renameit/main.dart';

//import 'package:renameit/Screens/welcome_screen.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
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
              Navigator.pushNamed(context, '/about');
            },
            child: Text("About",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 12,
                ))),
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: Text("Contact Us",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 12,
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
    return Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        height: size.height * 0.9,
        child: Column(
          children: [
            Container(
              height: size.height * 0.05,
              child: Text(
                "About",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/market-launch-concept-illustration_114360-1498-removebg-preview.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: size.height * 0.05,
            ),
            Text(
              "Are you a teacher? Do you run a local business? App Name is the one stop destination helping you in launching your business online and reaching a broader audience. Don't have an existing business/job? No worries. Learn from our curated list of courses on topics ranging from Technology to Skilled Crafts.",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            )
          ],
        ));
  }
}
