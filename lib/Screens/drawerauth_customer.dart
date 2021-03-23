import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/Customer.dart';
import 'package:renameit/Screens/Team.dart';
import 'package:renameit/Screens/applied.dart';
import 'package:renameit/Screens/cust_proj.dart';
import 'package:renameit/Screens/mycontacts.dart';
import 'package:renameit/Screens/new_proj.dart';
import 'package:renameit/Screens/pottery.dart';
import 'package:renameit/main.dart';

import '../globaluser.dart';

class SidebarAfterAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[800],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.blueGrey[800],
                    height: size.height * 0.02,
                  ),
                  ListTile(
                    title: Text("$username",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.perm_identity,
                        color: Colors.white,
                      ),
                      radius: 25,
                    ),
                  ),
                  Container(
                    height: size.height * 0.01,
                  ),
                  Container(
                      width: size.width * 0.3,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.redAccent,
                      ),
                      child: MaterialButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                          username = null;
                          team = false;
                          Navigator.pushNamed(context, '/authentication');
                        },
                        child: Text("Sign Out",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                  Container(
                    height: size.height * 0.03,
                  ),
                  Container(
                    height: size.height * 0.003,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey[800],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: Text("Go to Dashboard",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              if (team == false) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomerHomeView()));
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TeamHomeView()));
              }
            },
          ),
          ListTile(
              contentPadding: EdgeInsets.only(left: 20, right: 20),
              leading: Icon(
                Icons.fact_check_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: Text("My Project",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  )),
              onTap: () {
                FirebaseAuth user = FirebaseAuth.instance;
                dynamic uid;
                uid = user.currentUser.uid;
                CollectionReference docRef = db.collection("Projects");
                docRef
                    .doc(uid)
                    .get()
                    .then((DocumentSnapshot documentSnapshot) => {
                          if (documentSnapshot.exists)
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CustomerProject()))
                            }
                          else
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewProject()))
                            }
                        });
              }),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.notes_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: Text("Response",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              FirebaseFirestore.instance
                  .collection('Requests')
                  .doc(FirebaseAuth.instance.currentUser.uid)
                  .collection('Applied')
                  .get()
                  .then((QuerySnapshot querySnapshot) => {
                        querySnapshot.docs.forEach((doc) {
                          //mprojects.add(doc.id);
                          FirebaseFirestore.instance
                              .collection('Users')
                              .get()
                              .then((QuerySnapshot querySnapshot) => {
                                    querySnapshot.docs.forEach((doc_new) {
                                      if (doc.id == doc_new.id) {
                                        team_name.add(doc_new["name"]);
                                        team_desc.add(doc_new["proj_desc"]);
                                      }
                                    })
                                  });
                        })
                      });
              /*for (var i = 0; i < mprojects.length; i++) {
                FirebaseFirestore.instance
                    .collection('Projects')
                    .get()
                    .then((QuerySnapshot querySnapshot) => {
                          querySnapshot.docs.forEach((doc) {
                            if (mprojects[i] == doc.id) {
                              mproj_name.add(doc["proj_name"]);
                              mproj_desc.add(doc["proj_desc"]);
                              mproj_desc.add(doc["proj_budget"]);
                            }
                          })
                        });
              }*/
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Applied()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.book_online_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: Text("My Courses",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              /*for (var i = 0; i < mprojects.length; i++) {
                FirebaseFirestore.instance
                    .collection('Projects')
                    .get()
                    .then((QuerySnapshot querySnapshot) => {
                          querySnapshot.docs.forEach((doc) {
                            if (mprojects[i] == doc.id) {
                              mproj_name.add(doc["proj_name"]);
                              mproj_desc.add(doc["proj_desc"]);
                              mproj_desc.add(doc["proj_budget"]);
                            }
                          })
                        });
              }*/
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PotteryCourse()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.contact_page_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: Text("My Contacts",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              /*FirebaseFirestore.instance
                  .collection('Requests')
                  .doc(FirebaseAuth.instance.currentUser.uid)
                  .collection('Applied')
                  .get()
                  .then((QuerySnapshot querySnapshot) => {
                        querySnapshot.docs.forEach((doc) {
                          //mprojects.add(doc.id);
                          FirebaseFirestore.instance
                              .collection('Users')
                              .get()
                              .then((QuerySnapshot querySnapshot) => {
                                    querySnapshot.docs.forEach((doc_new) {
                                      if (doc.id == doc_new.id) {
                                        team_name.add(doc_new["name"]);
                                        team_desc.add(doc_new["proj_desc"]);
                                      }
                                    })
                                  });
                        })
                      });*/
              /*for (var i = 0; i < mprojects.length; i++) {
                FirebaseFirestore.instance
                    .collection('Projects')
                    .get()
                    .then((QuerySnapshot querySnapshot) => {
                          querySnapshot.docs.forEach((doc) {
                            if (mprojects[i] == doc.id) {
                              mproj_name.add(doc["proj_name"]);
                              mproj_desc.add(doc["proj_desc"]);
                              mproj_desc.add(doc["proj_budget"]);
                            }
                          })
                        });
              }*/
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyContacts()));
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.info_outline,
              size: 30,
              color: Colors.white,
            ),
            title: Text("About",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              Navigator.pushNamed(context, '/aboutauth');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.contact_page_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: Text("Contact Us",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              Navigator.pushNamed(context, '/contactauth');
            },
          ),
        ],
      ),
    );
  }
}
