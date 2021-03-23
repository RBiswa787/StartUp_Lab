import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/courseview.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ChapterView extends StatefulWidget {
  @override
  _ChapterViewState createState() => _ChapterViewState();
}

class _ChapterViewState extends State<ChapterView> {
  //TextEditingController _msg = TextEditingController();
  YoutubePlayerController _vidcontroller = YoutubePlayerController(
    initialVideoId: '8lf9f4IBnRc',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

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
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                height: size.height * 0.05,
                //color: Colors.orange,
                child: Text("Pottery 101: Introduction",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.005,
                color: Colors.greenAccent,
              ),
              Container(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.9,
                //height: size.height * 0.3,
                child: YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      controller: _vidcontroller,
                    ),
                    builder: (context, player) {
                      return Column(
                        children: [
                          // some widgets
                          player,
                        ],
                      );
                    }),
              ),
              Container(
                height: size.height * 0.03,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                height: size.height * 0.03,
                child: Text("Description",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: size.height * 0.3,
                child: Text("${course_desc}",
                    style: TextStyle(
                      fontSize: 19,
                    )),
              ),
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
