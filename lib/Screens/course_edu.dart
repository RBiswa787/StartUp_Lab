import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_edu.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'course_data_model.dart';

class Course_Edu extends StatefulWidget {
  @override
  _Course_EduState createState() => _Course_EduState();
}

//List chapter;

class _Course_EduState extends State<Course_Edu> {
  TextEditingController _name = TextEditingController();
  TextEditingController _vid = TextEditingController();
  TextEditingController _desc = TextEditingController();
  /*@override
  void initState() {
    if (data_set != null) {
      chapter.add(data_set);
    }
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.yellow,
        appBar: buildAppBar(context),
        drawer: Drawer(
          child: SidebarAfterAuthEdu(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Add New Chapter"),
                    content: Column(
                      children: [
                        TextFormField(
                          controller: _name,
                          decoration: InputDecoration(
                            hintText: "Introduction",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                            labelText: "Enter Chapter Name",
                            labelStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo[800],
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _vid,
                          decoration: InputDecoration(
                            hintText: "TxI45F",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                            labelText: "Enter Video ID",
                            labelStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo[800],
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _desc,
                          decoration: InputDecoration(
                            hintText: "This video introduces you to...",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                            labelText: "Enter Description",
                            labelStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo[800],
                            ),
                          ),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Map<String, String> datamap = {
                              "video_id": "",
                              "course_name": "",
                              "course_desc": ""
                            };
                            datamap["video_id"] = _vid.text;
                            datamap["course_name"] = _name.text;
                            datamap["course_desc"] = _desc.text;
                            chapter.add(datamap);
                            Map<String, dynamic> finaldb = {
                              "chapters": chapter
                            };
                            FirebaseFirestore.instance
                                .collection("Courses")
                                .doc(FirebaseAuth.instance.currentUser.uid)
                                .set(finaldb);
                            setState(() {});
                            Navigator.of(context).pop();
                          },
                          child: Text("Add"))
                    ],
                  );
                });
          },
          elevation: 10,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.007,
                width: size.width,
                //color: Colors.orange,
              ),
              Container(
                width: size.width,
                height: size.height,
                child: ListView.builder(
                  itemCount: chapter.length,
                  itemBuilder: (BuildContext context, int index) {
                    YoutubePlayerController _vidcontroller =
                        YoutubePlayerController(
                      initialVideoId: '${chapter[index]["video_id"]}',
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute: false,
                      ),
                    );
                    return Card(
                      //elevation: 7,
                      color: Colors.cyan[400],
                      child: ListTile(
                        minVerticalPadding: 10,
                        title: Text(
                          "${chapter[index]["course_name"]}",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: YoutubePlayerBuilder(
                            player: YoutubePlayer(
                              controller: _vidcontroller,
                            ),
                            builder: (context, player) {
                              return Column(
                                children: [
                                  // some widgets
                                  player,
                                  Container(height: size.height * 0.007),
                                  Container(
                                    child: Text(
                                      "${chapter[index]["course_desc"]}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.5,
              )
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
