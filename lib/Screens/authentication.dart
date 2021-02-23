import 'package:flutter/material.dart';
import 'package:renameit/Screens/Customer.dart';
import 'package:renameit/Screens/Team.dart';
import 'package:renameit/Screens/registration.dart';
import 'package:renameit/drawer.dart';
import 'package:renameit/flutterfire.dart';
import 'package:renameit/globaluser.dart';
import 'package:renameit/main.dart';

class Authentication extends StatefulWidget {
  Authentication({Key key}) : super(key: key);
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        drawer: Drawer(child: Sidebar()),
        body: SingleChildScrollView(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.1,
            ),
            Container(
              height: size.height * 0.1,
              width: size.width * 0.5,
              child: TextFormField(
                controller: _emailField,
                decoration: InputDecoration(
                    hintText: "yourmail@email.com",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    labelText: "Type your EmailID",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    )),
              ),
            ),
            Container(
              height: size.height * 0.04,
            ),
            Container(
              height: size.height * 0.1,
              width: size.width * 0.5,
              child: TextFormField(
                controller: _passField,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Type your Password",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    )),
              ),
            ),
            Container(
              height: size.height * 0.04,
            ),
            Container(
                width: size.width * 0.5,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[400],
                ),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate =
                        await signIn(_emailField.text, _passField.text);
                    if (shouldNavigate) {
                      if (team == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TeamHomeView()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomerHomeView()));
                      }
                    }
                  },
                  child: Text("Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                )),
            Container(
              height: size.height * 0.02,
            ),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.03,
              child: Text(
                "Not a member?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.045,
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        )));
  }

  AppBar buildAppBar(context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.cyan),
      toolbarHeight: 55,
      elevation: 10,
      backgroundColor: Colors.indigo[900],
      title: Text("App Name",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          )),
    );
  }
}
