import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_edu.dart';
import 'package:renameit/Screens/registration.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:renameit/main.dart';

YoutubePlayerController _vidcontroller = YoutubePlayerController(
  initialVideoId: '6_PIRbXlELw',
  flags: YoutubePlayerFlags(
    autoPlay: true,
    mute: true,
  ),
);

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        drawer: Drawer(child: SidebarAfterAuthEdu()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.03,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                height: size.height * 0.06,
                child: Text(
                  "Course Name: ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.teal[300],
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: size.height * 0.007,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                height: size.height * 0.06,
                child: Text(
                  "Topic: ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.teal[300],
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                //color: Colors.orange,
                padding: EdgeInsets.all(10),
                //height: size.height * 0.30,
                width: size.width,
                child: YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      controller: _vidcontroller,
                    ),
                    builder: (context, player) {
                      return Column(
                        children: [
                          // some widgets
                          player,
                          //some other widgets
                        ],
                      );
                    }),
              ),
              Container(
                height: size.height * 0.007,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                height: size.height * 0.06,
                child: Text(
                  "Description: ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.teal[300],
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
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
