import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

class Applied extends StatefulWidget {
  @override
  _AppliedState createState() => _AppliedState();
}

class _AppliedState extends State<Applied> {
  TextEditingController _msg = TextEditingController();
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
                child: Text("Recent Responses",
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
                  itemCount: response_name.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 15,
                      color: Colors.white,
                      child: ListTile(
                        minVerticalPadding: 10,
                        title: Text(
                          "Name: ${response_name[index]}\n",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Role: ${response_desg[index]}\n\n${response_price[index]}",
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
                                  onPressed: () {
                                    return showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              title: Text("Confirm Acceptance"),
                                              content: Column(
                                                children: [
                                                  Container(
                                                    height: size.height * 0.02,
                                                  ),
                                                  Container(
                                                    height: size.height * 0.2,
                                                    child: Text(
                                                      "Email: \nabc.official@gmail.com\n\nPhone No.: \n999999XXXX",
                                                      style: TextStyle(
                                                        fontSize: 21,
                                                      ),
                                                    ),
                                                  ),
                                                  /* Container(
                                                    height: size.height * 0.02,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    height: size.height * 0.1,
                                                    child: Text(
                                                      "Phone No.: \n999999XXXX",
                                                      style: TextStyle(
                                                        fontSize: 21,
                                                      ),
                                                    ),
                                                  ),*/
                                                  TextFormField(
                                                    controller: _msg,
                                                    decoration: InputDecoration(
                                                      //hintText: "Introduction",
                                                      hintStyle: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black54,
                                                      ),
                                                      labelText: "Message",
                                                      labelStyle: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.indigo[800],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              actions: <Widget>[
                                                FlatButton(
                                                    padding: EdgeInsets.all(10),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Confirm",
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        color: Colors.red,
                                                      ),
                                                    ))
                                              ]);
                                        });
                                  },
                                  child: Text("Accept",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                )),
                            /*Container(
                              height: size.height * 0.001,
                            ),*/
                            Container(
                                width: size.width * 0.3,
                                height: size.height * 0.01,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: MaterialButton(
                                  elevation: 20,
                                  onPressed: () {},
                                  child: Text("",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                )),
                            Container(
                                width: size.width * 0.3,
                                height: size.height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.redAccent[400],
                                ),
                                child: FlatButton(
                                  //elevation: 20,
                                  onPressed: () {
                                    //setState(() {});
                                  },
                                  child: Text("Discard",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                ))
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
