import 'package:flutter/material.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

class CustomerHomeView extends StatefulWidget {
  @override
  _CustomerHomeViewState createState() => _CustomerHomeViewState();
}

class _CustomerHomeViewState extends State<CustomerHomeView> {
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
          child: Text(
            'Welcome! \n $username',
            style: TextStyle(color: Colors.grey[800], fontSize: 24),
            textAlign: TextAlign.center,
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
