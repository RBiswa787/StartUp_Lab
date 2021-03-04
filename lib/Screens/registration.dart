import 'package:flutter/material.dart';
import 'package:renameit/Screens/authentication.dart';
import 'package:renameit/drawer.dart';
import 'package:renameit/flutterfire.dart';
import 'package:renameit/main.dart';

bool _check = false;

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passField = TextEditingController();
  TextEditingController _nameField = TextEditingController();
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
                    hintText: "abcd@email.com",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    labelText: "Type your Email",
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
                obscureText: true,
                controller: _passField,
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
              height: size.height * 0.1,
              width: size.width * 0.5,
              child: TextFormField(
                controller: _nameField,
                decoration: InputDecoration(
                    labelText: "Type your Name",
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
                child: CheckboxListTile(
                  value: _check,
                  title: Text("Join our team?"),
                  onChanged: (val) {
                    setState(() {
                      _check = val;
                    });
                  },
                )),
            Container(
              height: size.height * 0.04,
            ),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.045,
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate = await register(_emailField.text,
                      _passField.text, _nameField.text, _check, false);
                  if (shouldNavigate) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Authentication()));
                  }
                },
                child: Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        )));
  }
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
