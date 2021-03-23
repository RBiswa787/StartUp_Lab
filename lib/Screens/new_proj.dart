import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renameit/Screens/cust_proj.dart';
import 'package:renameit/Screens/drawerauth_customer.dart';
import 'package:renameit/main.dart';

class NewProject extends StatefulWidget {
  @override
  _NewProjectState createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {
  bool _app = false, _web = false, _dlv = false, _seo = false;
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
  TextEditingController _projname = TextEditingController();
  TextEditingController _projdesc = TextEditingController();
  TextEditingController _projbudget = TextEditingController();
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
                height: size.height * 0.02,
              ),
              Container(
                //alignment: Alignment.topLeft,
                height: size.height * 0.05,
                child: Text("Open New Project",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      //fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    )),
              ),
              Container(
                  height: size.height * 0.005,
                  width: size.width * 0.5,
                  color: Colors.blue[400]),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.03,
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          height: size.height * 0.03,
                          width: size.width * 0.5,
                          child: Text(
                            "Project Name:",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black87,
                            ),
                          )),
                      Container(
                        height: size.height * 0.02,
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          height: size.height * 0.03,
                          width: size.width * 0.5,
                          child: Text(
                            "Project Description:",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black87,
                            ),
                          )),
                      Container(
                        height: size.height * 0.02,
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          height: size.height * 0.03,
                          width: size.width * 0.5,
                          child: Text(
                            "Budget:",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black87,
                            ),
                          )),
                      Container(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.05,
                        padding: EdgeInsets.all(10),
                        width: size.width * 0.5,
                        child: TextField(
                          controller: _projname,
                          decoration: InputDecoration(
                            hintText: "Type project name",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                        padding: EdgeInsets.all(10),
                        width: size.width * 0.5,
                        child: TextField(
                          controller: _projdesc,
                          decoration: InputDecoration(
                            hintText: "Write a short desc",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                        padding: EdgeInsets.all(10),
                        width: size.width * 0.5,
                        child: TextField(
                          controller: _projbudget,
                          decoration: InputDecoration(
                            hintText: "Enter your budget",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.02,
                  ),
                ],
              ),
              Container(
                height: size.height * 0.02,
              ),
              Container(
                //alignment: Alignment.topLeft,
                height: size.height * 0.05,
                child: Text("Project Requirements",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      //fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    )),
              ),
              Container(
                  height: size.height * 0.005,
                  width: size.width * 0.5,
                  color: Colors.blue[400]),
              Container(
                height: size.height * 0.01,
              ),
              /*Column(
                  children: [
                    Container(
                        alignment: Alignment.centerRight,
                        height: size.height * 0.03,
                        width: size.width * 0.5,
                        child: Text(
                          "Mobile Application:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        )),
                    Container(
                      height: size.height * 0.02,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        height: size.height * 0.03,
                        width: size.width * 0.5,
                        child: Text(
                          "Website:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        )),
                    Container(
                      height: size.height * 0.02,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        height: size.height * 0.03,
                        width: size.width * 0.5,
                        child: Text(
                          "Delivery Service:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        )),
                    Container(
                      height: size.height * 0.02,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        height: size.height * 0.03,
                        width: size.width * 0.5,
                        child: Text(
                          "SEO Specialist:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black87,
                          ),
                        )),
                    Container(
                      height: size.height * 0.02,
                    ),
                  ],
                ),*/
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    //height: size.height * 0.2,
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      tileColor: Colors.cyan,
                      //tristate: true,
                      title: Text('Mobile Application',
                          style: TextStyle(color: Colors.white)),
                      controlAffinity: ListTileControlAffinity.platform,
                      value: _app,
                      onChanged: (bool value) {
                        setState(() {
                          AppProject();
                          this._app = value;
                          //print("$_state");
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    //height: size.height * 0.2,
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      tileColor: Colors.cyan,
                      //tristate: true,
                      title: Text('Website',
                          style: TextStyle(color: Colors.white)),
                      controlAffinity: ListTileControlAffinity.platform,
                      value: _web,
                      onChanged: (bool value) {
                        setState(() {
                          WebProject();
                          this._web = value;
                          //print("$_state");
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    //height: size.height * 0.2,
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      tileColor: Colors.cyan,
                      //tristate: true,
                      title: Text('Delivery Service',
                          style: TextStyle(color: Colors.white)),
                      controlAffinity: ListTileControlAffinity.platform,
                      value: _dlv,
                      onChanged: (bool value) {
                        setState(() {
                          DeliveryProject();
                          this._dlv = value;
                          //print("$_state");
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    //height: size.height * 0.2,
                    width: size.width * 0.9,
                    child: CheckboxListTile(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      tileColor: Colors.cyan,
                      //tristate: true,
                      title: Text('SEO Specialist',
                          style: TextStyle(color: Colors.white)),
                      controlAffinity: ListTileControlAffinity.platform,
                      value: _seo,
                      onChanged: (bool value) {
                        setState(() {
                          SEOProject();
                          this._seo = value;
                          //print("$_state");
                        });
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.02,
              ),
              Container(
                //alignment: Alignment.topLeft,
                height: size.height * 0.05,
                child: Text("Select Applicable States n UTs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      //fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    )),
              ),
              Container(
                  height: size.height * 0.005,
                  width: size.width * 0.5,
                  color: Colors.blue[400]),
              Container(
                height: size.height * 0.02,
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
                          title: Text('Goa',
                              style: TextStyle(color: Colors.white)),
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
                      bool shouldNavigate = await SendProjectData(
                          _projname.text,
                          _projdesc.text,
                          _projbudget.text,
                          _app,
                          _web,
                          _dlv,
                          _seo,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerProject()));
                    },
                    child: Text("Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ))
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

Future<bool> SendProjectData(
    String _projname,
    String _projdesc,
    String _projbudget,
    bool _app,
    bool _web,
    bool _dlv,
    bool _seo,
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
  Map<String, dynamic> project_data = {
    "proj_name": _projname,
    "proj_desc": _projdesc,
    "proj_budget": _projbudget,
    "app": _app,
    "web": _web,
    "delivery": _dlv,
    "seo": _seo,
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
      .collection('Projects')
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set(project_data)
      .then((value) => print("Data Updated"));
  return true;
}

Future<bool> AppProject() async {
  FirebaseFirestore.instance
      .collection("AppProject")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}

Future<bool> WebProject() async {
  FirebaseFirestore.instance
      .collection("WebProject")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}

Future<bool> DeliveryProject() async {
  FirebaseFirestore.instance
      .collection("DeliveryProject")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}

Future<bool> SEOProject() async {
  FirebaseFirestore.instance
      .collection("SEOProject")
      .doc(FirebaseAuth.instance.currentUser.uid)
      .set({'reg': true});
  return true;
}
