import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

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
          child: SidebarAuth(),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //later
          ],
        )));
  }

  AppBar buildAppBar(context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.cyan),
      toolbarHeight: 55,
      elevation: 10,
      backgroundColor: Colors.indigo[900],
      title: Text("App Name",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          )),
    );
  }
}

class SidebarAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            children: [
              Text(
                'Welcome! \n $username',
                style: TextStyle(color: Colors.grey[800], fontSize: 24),
                textAlign: TextAlign.center,
              ),
              Container(
                height: size.height * 0.04,
              ),
              Container(
                  width: size.width * 0.3,
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.redAccent[400],
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
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white30,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.person_sharp,
            color: Colors.grey[800],
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          },
        ),
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/aboutauth',
              );
            },
            child: Text("About",
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 20,
                ))),
        FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/contactauth');
            },
            child: Text("Contact Us",
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 20,
                ))),
      ],
    );
  }
}
