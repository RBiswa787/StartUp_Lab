import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';

import '../main.dart';

class WebDev extends StatefulWidget {
  @override
  _WebDevState createState() => _WebDevState();
}

class _WebDevState extends State<WebDev> {
  TextEditingController _devname = TextEditingController();
  TextEditingController _devdesc = TextEditingController();
  TextEditingController _devemail = TextEditingController();
  TextEditingController _devphn = TextEditingController();
  TextEditingController _devweb = TextEditingController();
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
                        controller: _devname,
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
                        controller: _devdesc,
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
                        "Business Email:",
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
                        controller: _devemail,
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
                        "Business Phone No.:",
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
                        controller: _devphn,
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
                        controller: _devweb,
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
                    bool shouldNavigate = await SendWebDevData(
                      _devname.text,
                      _devdesc.text,
                      _devemail.text,
                      _devphn.text,
                      _devweb.text = "Not Available",
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

Future<bool> SendWebDevData(
  String devname,
  String devdesc,
  String devemail,
  String devphn,
  String devweb,
) async {
  Map<String, dynamic> webdev_data = {
    "dev_name": devname,
    "dev_desc": devdesc,
    "dev_email": devemail,
    "dev_phn": devphn,
    "dev_web": devweb,
  };
  FirebaseFirestore.instance
      .collection('WebDev')
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set(webdev_data)
      .then((value) => print("Data Updated"));
  FirebaseFirestore.instance
      .collection("Registered")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}
