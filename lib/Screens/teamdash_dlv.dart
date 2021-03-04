import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/Screens/drawerauth_dlv.dart';
import 'package:renameit/Screens/drawerauth_webdev.dart';

class TeamDashboardDlv extends StatefulWidget {
  @override
  _TeamDashboardDlvState createState() => _TeamDashboardDlvState();
}

class _TeamDashboardDlvState extends State<TeamDashboardDlv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: SidebarAfterAuthDlv(),
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
