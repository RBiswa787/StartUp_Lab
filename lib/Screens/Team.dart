import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/delivery.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/Screens/edu.dart';
import 'package:renameit/Screens/mdev.dart';
import 'package:renameit/Screens/seo.dart';
import 'package:renameit/Screens/webdev.dart';
import 'package:renameit/main.dart';

String valuechoose;
String valuechooseExp;
List list_items_Exp = [
  'Beginner[<3yrs]',
  'Intermediate[3-7yrs]',
  'Expert[>7yrs]'
];
List list_items = [
  'Web Developer',
  'Mobile App Developer',
  'Delivery Service',
  'SEO Specialist',
  'Educator'
];

class TeamHomeView extends StatefulWidget {
  @override
  _TeamHomeViewState createState() => _TeamHomeViewState();
}

class _TeamHomeViewState extends State<TeamHomeView> {
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
            Container(
              height: size.height * 0.04,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Complete your Profile",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
            ),
            Container(
              height: size.height * 0.02,
            ),
            Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/corporate-portrait-office-workers-employees_74855-5471.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(height: size.height * 0.02),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.5,
                      child: Text("Choose your Role: ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: size.width * 0.5,
                        alignment: Alignment.center,
                        child: DropdownButton(
                          hint: Text("Select Items"),
                          dropdownColor: Colors.grey[50],
                          value: valuechoose,
                          onChanged: (newValue) {
                            setState(() {
                              valuechoose = newValue;
                            });
                          },
                          items: list_items.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          }).toList(),
                        ))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.5,
                      child: Text("Experience: ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: size.width * 0.5,
                        alignment: Alignment.center,
                        child: DropdownButton(
                          hint: Text("Select Items"),
                          dropdownColor: Colors.grey[50],
                          value: valuechooseExp,
                          onChanged: (newValue) {
                            setState(() {
                              valuechooseExp = newValue;
                            });
                          },
                          items: list_items_Exp.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          }).toList(),
                        ))
                  ],
                ),
              ],
            ),
            Container(
              height: size.height * 0.1,
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
                    bool shouldNavigate =
                        await SendData(valuechoose, valuechooseExp);
                    if (shouldNavigate) {
                      if (valuechoose == "Delivery Service") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Delivery()));
                      } else if (valuechoose == "Web Developer") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => WebDev()));
                      } else if (valuechoose == "Mobile App Developer") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MDev()));
                      } else if (valuechoose == "SEO Specialist") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SEO()));
                      } else if (valuechoose == "Educator") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Edu()));
                      }
                    }
                  },
                  child: Text("Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ))
          ],
        )));
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

Future<bool> SendData(String role, String experience) async {
  Map<String, dynamic> profile_data = {"role": role, "experience": experience};
  FirebaseFirestore.instance
      .collection('Teams')
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set(profile_data)
      .then((value) => print("Data Updated"));
  return true;
}
