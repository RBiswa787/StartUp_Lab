import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/Customer.dart';
import 'package:renameit/Screens/Team.dart';
import 'package:renameit/Screens/registration.dart';
import 'package:renameit/Screens/teamdash_dlv.dart';
import 'package:renameit/Screens/teamdash_edu.dart';
import 'package:renameit/Screens/teamdash_mdev.dart';
import 'package:renameit/Screens/teamdash_seo.dart';
import 'package:renameit/Screens/teamdash_wdev.dart';
import 'package:renameit/flutterfire.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

import '../drawer.dart';

dynamic data_new;

class Authentication extends StatefulWidget {
  Authentication({Key key}) : super(key: key);
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue[50],
        appBar: buildAppBar(context),
        drawer: Drawer(child: Sidebar()),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.transparent,
                height: size.height * 0.15,
              ),
              Container(
                //color: Colors.white.withOpacity(0.3),
                height: size.height * 0.08,
                width: size.width * 0.7,
                child: TextFormField(
                  controller: _emailField,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "yourmail@email.com",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                      labelText: "Type your EmailID",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[800],
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: size.height * 0.04,
              ),
              Container(
                //color: Colors.white.withOpacity(0.3),
                height: size.height * 0.08,
                width: size.width * 0.7,
                child: TextFormField(
                  controller: _passField,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "Enter a strong password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                      labelText: "Type your Password",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[800],
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: size.height * 0.20,
              ),
              Container(
                  width: size.width * 0.45,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightBlue[700],
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      bool shouldNavigate =
                          await signIn(_emailField.text, _passField.text);
                      if (shouldNavigate) {
                        if (team == true) {
                          FirebaseAuth user = FirebaseAuth.instance;
                          dynamic uid;
                          uid = user.currentUser.uid;
                          CollectionReference docRef =
                              db.collection("Registered");
                          docRef
                              .doc(uid)
                              .get()
                              .then((DocumentSnapshot documentSnapshot) => {
                                    if (documentSnapshot.exists)
                                      {
                                        db
                                            .collection("Teams")
                                            .doc(uid)
                                            .get()
                                            .then((DocumentSnapshot
                                                    documentSnapshot) =>
                                                {
                                                  data_new =
                                                      documentSnapshot.data()
                                                }),
                                        if (data_new['role'] == "Web Developer")
                                          {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TeamDashboardWeb()))
                                          }
                                        else if (data_new['role'] ==
                                            "Mobile App Developer")
                                          {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TeamDashboardMDev()))
                                          }
                                        else if (data_new['role'] ==
                                            "SEO Specialist")
                                          {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TeamDashboardSEO()))
                                          }
                                        else if (data_new['role'] ==
                                            "Delivery Service")
                                          {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TeamDashboardDlv()))
                                          }
                                        else if (data_new['role'] == "Educator")
                                          {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TeamDashboardEdu()))
                                          }
                                      }
                                    else
                                      {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TeamHomeView()))
                                      }
                                  });
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CustomerHomeView()));
                        }
                      }
                    },
                    child: Text("Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                  )),
              Container(
                color: Colors.transparent,
                height: size.height * 0.02,
              ),
              Container(
                color: Colors.transparent,
                width: size.width * 0.5,
                height: size.height * 0.03,
                child: Text(
                  "Not a member?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: size.width * 0.5,
                height: size.height * 0.045,
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  AppBar buildAppBar(context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarHeight: 55.5,
      elevation: 10,
      backgroundColor: Colors.blueGrey,
      title: Text("StartUp Labs",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    );
  }
}
