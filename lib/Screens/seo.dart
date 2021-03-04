import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';

import '../main.dart';

class SEO extends StatefulWidget {
  @override
  _SEOState createState() => _SEOState();
}

class _SEOState extends State<SEO> {
  TextEditingController _name = TextEditingController();
  TextEditingController _desc = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phn = TextEditingController();
  TextEditingController _web = TextEditingController();
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
                        controller: _name,
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
                        controller: _desc,
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
                        controller: _email,
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
                        controller: _phn,
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
                        controller: _web,
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
                    bool shouldNavigate = await SendSEOData(
                      _name.text,
                      _desc.text,
                      _email.text,
                      _phn.text,
                      _web.text = "Not Available",
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

Future<bool> SendSEOData(
  String name,
  String desc,
  String email,
  String phn,
  String web,
) async {
  Map<String, dynamic> seo_data = {
    "dev_name": name,
    "dev_desc": desc,
    "dev_email": email,
    "dev_phn": phn,
    "dev_web": web,
  };
  FirebaseFirestore.instance
      .collection('SEO')
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set(seo_data)
      .then((value) => print("Data Updated"));
  FirebaseFirestore.instance
      .collection("Registered")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}
