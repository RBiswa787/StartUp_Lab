import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

class MyContacts extends StatefulWidget {
  @override
  _MyContactsState createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
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
                alignment: Alignment.center,
                height: size.height * 0.05,
                //color: Colors.orange,
                child: Text("My Contacts",
                    style: TextStyle(
                        fontSize: 21,
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
                  itemCount: contact_name.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 15,
                      color: Colors.white,
                      child: ListTile(
                        minVerticalPadding: 10,
                        title: Text(
                          "${contact_name[index]}\n${contact_desg[index]}\n",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "${contact_mail[index]}",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Container(
                                width: size.width * 0.3,
                                height: size.height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent[400],
                                ),
                                child: FlatButton(
                                  //elevation: 20,
                                  onPressed: () {},
                                  child: Text("Chat",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                )),
                            /*Container(
                              height: size.height * 0.001,
                            ),*/
                          ],
                        ),
                      ),
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
