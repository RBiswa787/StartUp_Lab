import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';

import '../main.dart';

class Edu extends StatefulWidget {
  @override
  _EduState createState() => _EduState();
}

class _EduState extends State<Edu> {
  TextEditingController _edname = TextEditingController();
  TextEditingController _eddesc = TextEditingController();
  TextEditingController _edemail = TextEditingController();
  TextEditingController _edphn = TextEditingController();
  TextEditingController _edweb = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: SidebarAfterAuth(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: size.height * 0.01),
            Row(
              children: [
                Column(
                  children: [
                    /*Container(
                      alignment: Alignment.topLeft,
                      height: size.height * 0.06,
                      width: size.width * 0.6,
                      child: Text("Developer Details",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          )),
                    ),*/
                    //Container(height: size.height * 0.01),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.center,
                      child: Text(
                        "Enter Your Name[public]:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _edname,
                        decoration: InputDecoration(
                          hintText: "type your name",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.center,
                      child: Text(
                        "Profile Headline:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _eddesc,
                        decoration: InputDecoration(
                          hintText: "few lines describing yourself",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Official Email:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _edemail,
                        decoration: InputDecoration(
                          hintText: "something@email.com",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Official Phone No.:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _edphn,
                        decoration: InputDecoration(
                          hintText: "983992XXXX",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Your Website:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _edweb,
                        decoration: InputDecoration(
                          hintText: "optional",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
                width: size.width * 0.4,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink[500],
                ),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate = await SendEduData(
                      _edname.text,
                      _eddesc.text,
                      _edemail.text,
                      _edphn.text,
                      _edweb.text = "Not Available",
                    );
                    //Navigator.push(context,
                    //   MaterialPageRoute(builder: (context) => Delivery()));
                  },
                  child: Text("Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ))
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

Future<bool> SendEduData(
  String edname,
  String eddesc,
  String edemail,
  String edphn,
  String edweb,
) async {
  Map<String, dynamic> edu_data = {
    "ed_name": edname,
    "ed_desc": eddesc,
    "ed_email": edemail,
    "ed_phn": edphn,
    "ed_web": edweb,
  };
  FirebaseFirestore.instance
      .collection('Educator')
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set(edu_data)
      .then((value) => print("Data Updated"));
  FirebaseFirestore.instance
      .collection("Registered")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}
