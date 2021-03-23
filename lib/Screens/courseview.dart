import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/chapterview.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

class CourseView extends StatefulWidget {
  @override
  _CourseViewState createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  //TextEditingController _msg = TextEditingController();
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
                height: size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                height: size.height * 0.05,
                //color: Colors.orange,
                child: Text("Pottery 101",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.005,
                color: Colors.greenAccent,
              ),
              Container(
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.9,
                width: size.width * 0.9,
                child: ListView.builder(
                  itemCount: pottery_chapter_name.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Card(
                        elevation: 15,
                        color: Colors.white,
                        child: ListTile(
                          minVerticalPadding: 10,
                          title: Text(
                            "Chapter : ${pottery_chapter_name[index]}",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChapterView()));
                      },
                    );
                  },
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
