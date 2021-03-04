import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/about.dart';
import 'package:renameit/main.dart';
import '../globaluser.dart';

class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  bool _anp = false,
      _ap = false,
      _asm = false,
      _bih = false,
      _chh = false,
      _goa = false,
      _guj = false,
      _har = false,
      _hp = false,
      _jrk = false,
      _ktk = false,
      _ker = false,
      _mp = false,
      _maha = false,
      _mani = false,
      _megh = false,
      _miz = false,
      _naga = false,
      _odi = false,
      _pun = false,
      _raj = false,
      _sik = false,
      _tn = false,
      _tel = false,
      _tri = false,
      _up = false,
      _uk = false,
      _wb = false,
      _ani = false,
      _cnd = false,
      _dam = false,
      _del = false,
      _jnk = false,
      _lad = false,
      _li = false,
      _pudu = false;
  TextEditingController _orgname = TextEditingController();
  TextEditingController _orgemail = TextEditingController();
  TextEditingController _orgphn = TextEditingController();
  TextEditingController _orgweb = TextEditingController();
  TextEditingController _orgdesc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: size.height * 0.01),
            Row(
              children: [
                Column(
                  children: [
                    /*Container(
                      alignment: Alignment.topLeft,
                      height: size.height * 0.06,
                      width: size.width * 0.6,
                      child: Text("Organization Details",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          )),
                    ),*/
                    //Container(height: size.height * 0.01),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.center,
                      child: Text(
                        "Enter Organization Name:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _orgname,
                        decoration: InputDecoration(
                          hintText: "type org name",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.center,
                      child: Text(
                        "Organization Description:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _orgdesc,
                        decoration: InputDecoration(
                          hintText: "few lines describing org",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Organization Email:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _orgemail,
                        decoration: InputDecoration(
                          hintText: "something@email.com",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Organization Phone No.:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _orgphn,
                        decoration: InputDecoration(
                          hintText: "983992XXXX",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * 0.1,
                      width: size.width * 0.5,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Organization Website:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width * 0.5,
                      height: size.height * 0.08,
                      child: TextField(
                        controller: _orgweb,
                        decoration: InputDecoration(
                          hintText: "optional",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: size.height * 0.007,
            ),
            Container(
              width: size.width * 0.4,
              height: size.height * 0.08,
              child: Text("Select applicable states & UTs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  )),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Andhra Pradesh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _anp,
                        onChanged: (bool value) {
                          setState(() {
                            this._anp = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: false,
                        title: Text('Arunachal Pradesh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _ap,
                        onChanged: (bool value) {
                          setState(() {
                            this._ap = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Assam',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _asm,
                        onChanged: (bool value) {
                          setState(() {
                            this._asm = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Bihar',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _bih,
                        onChanged: (bool value) {
                          setState(() {
                            this._bih = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Chattisgarh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _chh,
                        onChanged: (bool value) {
                          setState(() {
                            this._chh = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title:
                            Text('Goa', style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _goa,
                        onChanged: (bool value) {
                          setState(() {
                            this._goa = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Gujarat',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _guj,
                        onChanged: (bool value) {
                          setState(() {
                            this._guj = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Haryana',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _har,
                        onChanged: (bool value) {
                          setState(() {
                            this._har = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        //tristate: true,
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        title: Text('Himachal Pradesh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _hp,
                        onChanged: (bool value) {
                          setState(() {
                            this._hp = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Jharkhand',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _jrk,
                        onChanged: (bool value) {
                          setState(() {
                            this._jrk = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Karnataka',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _ktk,
                        onChanged: (bool value) {
                          setState(() {
                            this._ktk = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Kerala',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _ker,
                        onChanged: (bool value) {
                          setState(() {
                            this._ker = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Madhya Pradesh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _mp,
                        onChanged: (bool value) {
                          setState(() {
                            this._mp = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Manipur',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _mani,
                        onChanged: (bool value) {
                          setState(() {
                            this._mani = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Maharashtra',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _maha,
                        onChanged: (bool value) {
                          setState(() {
                            this._maha = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Meghalaya',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _megh,
                        onChanged: (bool value) {
                          setState(() {
                            this._megh = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Mizoram',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _miz,
                        onChanged: (bool value) {
                          setState(() {
                            this._miz = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Nagaland',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _naga,
                        onChanged: (bool value) {
                          setState(() {
                            this._naga = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Odisha',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _odi,
                        onChanged: (bool value) {
                          setState(() {
                            this._odi = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Punjab',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _pun,
                        onChanged: (bool value) {
                          setState(() {
                            this._pun = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Rajasthan',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _raj,
                        onChanged: (bool value) {
                          setState(() {
                            this._raj = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Sikkim',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _sik,
                        onChanged: (bool value) {
                          setState(() {
                            this._sik = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Tamil Nadu',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _tn,
                        onChanged: (bool value) {
                          setState(() {
                            this._tn = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Telangana',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _tel,
                        onChanged: (bool value) {
                          setState(() {
                            this._tel = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Tripura',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _tri,
                        onChanged: (bool value) {
                          setState(() {
                            this._tri = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Uttar Pradesh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _up,
                        onChanged: (bool value) {
                          setState(() {
                            this._up = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Uttarakhand',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _uk,
                        onChanged: (bool value) {
                          setState(() {
                            this._uk = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('West Bengal',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _wb,
                        onChanged: (bool value) {
                          setState(() {
                            this._wb = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('A&N Islands',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _ani,
                        onChanged: (bool value) {
                          setState(() {
                            this._ani = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Daman & Diu',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _dam,
                        onChanged: (bool value) {
                          setState(() {
                            this._dam = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Delhi NCR',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _del,
                        onChanged: (bool value) {
                          setState(() {
                            this._del = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Jammu & Kashmir',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _jnk,
                        onChanged: (bool value) {
                          setState(() {
                            this._jnk = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Ladakh',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _lad,
                        onChanged: (bool value) {
                          setState(() {
                            this._lad = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      //height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        tileColor: Colors.cyan,
                        //tristate: true,
                        title: Text('Puducherry',
                            style: TextStyle(color: Colors.white)),
                        controlAffinity: ListTileControlAffinity.platform,
                        value: _pudu,
                        onChanged: (bool value) {
                          setState(() {
                            this._pudu = value;
                            //print("$_state");
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                width: size.width * 0.4,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink[500],
                ),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate = await SendDeliveryData(
                        _orgname.text,
                        _orgdesc.text,
                        _orgemail.text,
                        _orgphn.text,
                        _orgweb.text = "Not Available",
                        _anp,
                        _ap,
                        _asm,
                        _bih,
                        _chh,
                        _goa,
                        _guj,
                        _har,
                        _hp,
                        _jrk,
                        _ktk,
                        _ker,
                        _mp,
                        _maha,
                        _mani,
                        _megh,
                        _miz,
                        _naga,
                        _odi,
                        _pun,
                        _raj,
                        _sik,
                        _tn,
                        _tel,
                        _tri,
                        _up,
                        _uk,
                        _wb,
                        _ani,
                        _cnd,
                        _dam,
                        _del,
                        _jnk,
                        _lad,
                        _li,
                        _pudu);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Delivery()));
                  },
                  child: Text("Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ))
          ],
        ),
      ),
      drawer: Drawer(
        child: SidebarAuth(),
      ),
    );
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

class SidebarAuth extends StatelessWidget {
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
                    color: Colors.redAccent[400],
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
}

Future<bool> SendDeliveryData(
    String orgname,
    String orgdesc,
    String orgemail,
    String orgphn,
    String orgweb,
    bool _anp,
    bool _ap,
    bool _asm,
    bool _bih,
    bool _chh,
    bool _goa,
    bool _guj,
    bool _har,
    bool _hp,
    bool _jrk,
    bool _ktk,
    bool _ker,
    bool _mp,
    bool _maha,
    bool _mani,
    bool _megh,
    bool _miz,
    bool _naga,
    bool _odi,
    bool _pun,
    bool _raj,
    bool _sik,
    bool _tn,
    bool _tel,
    bool _tri,
    bool _up,
    bool _uk,
    bool _wb,
    bool _ani,
    bool _cnd,
    bool _dam,
    bool _del,
    bool _jnk,
    bool _lad,
    bool _li,
    bool _pudu) async {
  Map<String, dynamic> delivery_data = {
    "org_name": orgname,
    "org_desc": orgdesc,
    "org_email": orgemail,
    "org_phn": orgphn,
    "org_web": orgweb,
    "Arunachal Pradesh": _anp,
    "Andhra Pradesh": _ap,
    "Assam": _asm,
    "Bihar": _bih,
    "Chhatisgarh": _chh,
    "Goa": _goa,
    "Gujarat": _guj,
    "Haryana": _har,
    "Himachal Pradesh": _hp,
    "Jharkhand": _jrk,
    "Karnataka": _ktk,
    "Kerala": _ker,
    "Madhya Pradesh": _mp,
    "Maharashtra": _maha,
    "Manipur": _mani,
    "Meghalaya": _megh,
    "Mizoram": _miz,
    "Nagaland": _naga,
    "Odisha": _odi,
    "Punjab": _pun,
    "Rajasthan": _raj,
    "Sikkim": _sik,
    "Tamil Nadu": _tn,
    "Telangana": _tel,
    "Tripura": _tri,
    "Uttar Pradesh": _up,
    "Uttarakhand": _uk,
    "West Bengal": _wb,
    "Andaman Nicobar Islands": _ani,
    "Chandigarh": _cnd,
    "Daman": _dam,
    "Delhi": _del,
    "Jammu and Kashmir": _jnk,
    "Ladakh": _lad,
    "Lakshwadeep": _li,
    "Puducherry": _pudu
  };
  FirebaseFirestore.instance
      .collection('Delivery')
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set(delivery_data)
      .then((value) => print("Data Updated"));
  FirebaseFirestore.instance
      .collection("Registered")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}
