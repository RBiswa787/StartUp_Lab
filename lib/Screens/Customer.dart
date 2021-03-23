import 'package:carousel_slider/carousel_slider.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/pottery.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';

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
          child: SidebarAfterAuth(),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: size.height * 0.04,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: size.height * 0.05,
              child: Text("     Learn a New Skill!",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  )),
            ),
            Container(
              height: size.height * 0.007,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 290,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8),
              items: [
                InkWell(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: size.height * 0.6,
                    width: size.width * 0.8,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.31,
                        ),
                        Text("Learn Pottery!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/dirty-hands-modeling-clay-potter-s-wheel_23-2148679150.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    //print("Tapped");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PotteryCourse()));
                  },
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: size.height * 0.6,
                    width: size.width * 0.8,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.31,
                        ),
                        Text("Learn Weaving!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/high-view-person-knitting-concept_23-2148643229.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    print("Tapped");
                  },
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: size.height * 0.6,
                    width: size.width * 0.8,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.31,
                        ),
                        Text("Learn Basket Making!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/wicker-baskets-sale_1398-2317.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    print("Tapped");
                  },
                )
              ],
            ),
            Container(
              height: size.height * 0.02,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: size.height * 0.05,
              child: Text("     Launch Business Online!",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  )),
            ),
            Container(height: size.height * 0.009),
            InkWell(
              child: Container(
                alignment: Alignment.bottomRight,
                height: size.height * 0.5,
                width: size.width * 0.95,
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.37,
                    ),
                    Text("Launch!",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                            "assets/images/market-launch-concept-illustration_114360-1498-removebg-preview.png"),
                        fit: BoxFit.fitWidth)),
              ),
              onTap: () {
                print("Tapped");
              },
            )
          ],
        )));
  }

  AppBar buildAppBar(context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarHeight: 55,
      elevation: 10,
      backgroundColor: Colors.blueGrey,
      title: Text("StartUp Labs",
          style: TextStyle(
            color: Colors.white,
            //fontWeight: FontWeight.bold,
            fontSize: 21,
          )),
    );
  }
}

/*class SidebarAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            children: [
              Text(
                'Welcome! \n $username',
                style: TextStyle(color: Colors.grey[800], fontSize: 24),
                textAlign: TextAlign.center,
              ),
              Container(
                height: size.height * 0.04,
              ),
              Container(
                  width: size.width * 0.3,
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.orange,
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      username = null;
                      team = false;
                      Navigator.pushNamed(context, '/authentication');
                    },
                    child: Text("Sign Out",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
            ],
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
}*/
