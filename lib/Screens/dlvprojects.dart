import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_dlv.dart';
import 'package:renameit/Screens/drawerauth_mdev.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List finallist = [];

class DlvProjects extends StatefulWidget {
  @override
  _DlvProjectsState createState() => _DlvProjectsState();
}

class _DlvProjectsState extends State<DlvProjects> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: SidebarAfterAuthDlv(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.03,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height * 0.05,
              //color: Colors.orange,
              child: Text("Available Projects",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.9,
              width: size.width * 0.9,
              child: ListView.builder(
                itemCount: dlvproj_name.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    //color: Colors.cyan[400],
                    child: ListTile(
                        minVerticalPadding: 10,
                        title: Text(
                          "Project Name: ${dlvproj_name[index]}\n",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Project Description: ${dlvproj_desc[index]}\n\nBudget: ${dlvproj_budget[index]}",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        /*trailing: Text(
                        "Budget: ${dlvproj_budget[index]}",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),*/
                        trailing: Container(
                            width: size.width * 0.3,
                            height: size.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent[400],
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                FirebaseFirestore.instance
                                    .collection("Requests")
                                    .doc(dlvproj_cust[index])
                                    .collection("Applied")
                                    .doc(FirebaseAuth.instance.currentUser.uid)
                                    .set({'bool': true});
                              },
                              child: Text("Apply",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                            ))),
                  );
                },
              ),
            )
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
