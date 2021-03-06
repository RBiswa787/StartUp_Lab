import 'package:flutter/material.dart';
import 'package:renameit/Screens/drawerauth_edu.dart';
import 'package:renameit/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'course_data_model.dart';

class Course_Edu extends StatefulWidget {
  @override
  _Course_EduState createState() => _Course_EduState();
}

class _Course_EduState extends State<Course_Edu> {
  List chapter = [
    init_obj,
  ];
  TextEditingController _name = TextEditingController();
  TextEditingController _vid = TextEditingController();
  TextEditingController _desc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            CourseData obj;
                            obj.UpdateData(_name.toString(), _vid.toString(),
                                _desc.toString());
                            chapter.add(obj);
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
                      initialVideoId: '${chapter[index].video_id}',
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute: false,
                      ),
                    );
                    return Card(
                      elevation: 15,
                      color: Colors.cyan,
                      child: ListTile(
                        minVerticalPadding: 10,
                        title: Text(
                          "${chapter[index].course_name}",
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
                                      "${chapter[index].course_desc}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                        onTap: () {},
                      ),
                    );
                  },
                ),
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

class CourseData {
  String course_name = "ABC";
  String video_id = "KfhBsahIk7w";
  String course_desc = "Description";
  CourseData() {
    this.course_name = "ABC";
    this.course_desc = "Description";
    this.video_id = "KfhBsahIk7w";
  }
  void UpdateData(
      String course_name_p, String video_id_p, String course_desc_p) {
    this.course_name = course_name_p;
    this.video_id = video_id_p;
    this.course_desc = course_desc_p;
  }
}

CourseData init_obj;

//void Initialize() {
//  init_obj.UpdateData("Chapter Name", "KfhBsahIk7w", "Description");
//}
