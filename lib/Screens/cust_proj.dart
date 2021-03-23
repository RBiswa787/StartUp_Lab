import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/Screens/new_proj.dart';
import 'package:renameit/main.dart';

class CustomerProject extends StatefulWidget {
  @override
  _CustomerProjectState createState() => _CustomerProjectState();
}

class _CustomerProjectState extends State<CustomerProject> {
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
              height: size.height * 0.022,
            ),
            Container(
                alignment: Alignment.center,
                height: size.height * 0.04,
                child: Text("Project Details",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.blue.shade900,
                    ))),
            Container(
                height: size.height * 0.005,
                width: size.width * 0.5,
                color: Colors.blue[400]),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      //padding: EdgeInsets.only(left: 20),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Project Name:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      //padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Project Description:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Budget:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      // padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Mobile Application:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      //padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Website:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      //padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "Delivery Service:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      //padding: EdgeInsets.only(left: 20, right: 10),
                      width: size.width * 0.5,
                      height: size.height * 0.09,
                      color: Colors.white,
                      child: Text(
                        "SEO Specialist:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(height: size.height * 0.06),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: ProjectName(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: ProjectDesc(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: ProjectBudget(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: AppReq(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: WebReq(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: DeliveryReq(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      height: size.height * 0.09,
                      //color: Colors.yellow,
                      child: SEOReq(),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                width: size.width * 0.3,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink[500],
                ),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewProject()));
                  },
                  child: Text("Edit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
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

class ProjectName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Column(
            children: [
              Container(
                height: size.height * 0.09,
                child: Text("${data['proj_name']}",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class ProjectDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Column(
            children: [
              Container(
                height: size.height * 0.09,
                child: Text("${data['proj_desc']}",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class ProjectBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Column(
            children: [
              Container(
                height: size.height * 0.09,
                child: Text("${data['proj_budget']}",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class AppReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          if (data['app'] == true) {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Not Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          }
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class WebReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          if (data['web'] == true) {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Not Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          }
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class DeliveryReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          if (data['delivery'] == true) {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Not Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          }
        }

        return CircularProgressIndicator();
      },
    );
  }
}

class SEOReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DocumentReference users = FirebaseFirestore.instance
        .collection('Projects')
        .doc(FirebaseAuth.instance.currentUser.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: users.get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          if (data['seo'] == true) {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  height: size.height * 0.09,
                  child: Text("Not Required",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            );
          }
        }

        return CircularProgressIndicator();
      },
    );
  }
}
