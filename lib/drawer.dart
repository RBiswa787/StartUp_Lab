import 'package:flutter/material.dart';
import 'package:renameit/main.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[800],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.blueGrey[800],
                    height: size.height * 0.07,
                  ),
                  ListTile(
                    title: Text("Logged in as Guest",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.perm_identity,
                        color: Colors.white,
                      ),
                      radius: 25,
                    ),
                  ),
                  Container(
                    height: size.height * 0.03,
                  ),
                  Container(
                    height: size.height * 0.003,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey[800],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: Text("Home",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              Navigator.pushNamed(context, '/welcome');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.info_outline,
              size: 30,
              color: Colors.white,
            ),
            title: Text("About",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20),
            leading: Icon(
              Icons.contact_page_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: Text("Contact Us",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                )),
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
        ],
      ),
    );
  }
}
