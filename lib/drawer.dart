import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Navigate',
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
                '/about',
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
              Navigator.pushNamed(context, '/contact');
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
