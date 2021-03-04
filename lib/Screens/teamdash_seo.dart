import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_seo.dart';

class TeamDashboardSEO extends StatefulWidget {
  @override
  _TeamDashboardSEOState createState() => _TeamDashboardSEOState();
}

class _TeamDashboardSEOState extends State<TeamDashboardSEO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: SidebarAfterAuthSEO(),
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
