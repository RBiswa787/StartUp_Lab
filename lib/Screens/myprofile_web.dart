import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_webdev.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

String name_web = username;
String username_web;
String role_web;
String experience_web;
String website_web;
String phn_web;
String email_web;
String desc_web;

class MyProf_Web extends StatefulWidget {
  @override
  _MyProf_WebState createState() => _MyProf_WebState();
}

class _MyProf_WebState extends State<MyProf_Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: SidebarAfterAuthWeb(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.04,
              //color: Colors.orange,
            ),
            Container(
              height: size.height * 0.04,
              //color: Colors.orange,
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: size.height * 0.007,
              //color: Colors.orange,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Role",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Experience",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Contact No.",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Website",
                        style: TextStyle(
                          fontSize: 21,
                          //fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.6,
                      height: size.height * 0.09,
                      color: Colors.yellow,
                      child: Name(),
                    ),
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.2,
                      color: Colors.yellow,
                      child: Role(),
                    ),
                    /*Container(
                      width: size.width * 0.6,
                      height: size.height * 0.09,
                      color: Colors.yellow,
                      child: ,
                    ),*/
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.4,
                      color: Colors.yellow,
                      child: Username(),
                    ),
                    /*Container(
                      width: size.width * 0.6,
                      height: size.height * 0.09,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.09,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.09,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.09,
                      color: Colors.yellow,
                    )*/
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarHeight: 55,
      elevation: 10,
      backgroundColor: Colors.blueGrey[600],
      title: Text("StartUp Labs",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    );
  }
}

class Username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('WebDev')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Column(
            children: [
              Container(
                height: size.height * 0.09,
                child: Text("${data['dev_name']}"),
              ),
              Container(
                height: size.height * 0.09,
                child: Text("${data['dev_email']}"),
              ),
              Container(
                height: size.height * 0.09,
                child: Text("${data['dev_desc']}"),
              ),
              Container(
                height: size.height * 0.09,
                child: Text("${data['dev_website']}"),
              ),
              Container(
                height: size.height * 0.09,
                child: Text("${data['dev_phn']}"),
              ),
            ],
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Users')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text(
            "Something went wrong",
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Text(
            "${data['name']}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              //fontWeight: FontWeight.bold,
            ),
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class Role extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Teams')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Column(
            children: [
              Container(
                height: size.height * 0.09,
                child: Text(
                  "${data['role']}",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                child: Text(
                  "${data['experience']}",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}
