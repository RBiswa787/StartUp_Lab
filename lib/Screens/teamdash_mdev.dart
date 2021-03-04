import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/Screens/drawerauth_mdev.dart';
import 'package:renameit/Screens/drawerauth_webdev.dart';

class TeamDashboardMDev extends StatefulWidget {
  @override
  _TeamDashboardMDevState createState() => _TeamDashboardMDevState();
}

class _TeamDashboardMDevState extends State<TeamDashboardMDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: SidebarAfterAuthMdev(),
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
