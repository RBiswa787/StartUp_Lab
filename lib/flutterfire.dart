import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renameit/globaluser.dart';

Map<String, dynamic> data;
Future<bool> signIn(String email, String pass) async {
  try {
    FirebaseAuth user = FirebaseAuth.instance;
    dynamic uid;
    await user.signInWithEmailAndPassword(email: email, password: pass);
    uid = user.currentUser.uid;
    CollectionReference docRef = db.collection("Users");
    /*FutureBuilder<DocumentSnapshot>(
      future: docRef.doc(uid).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          username = data['name'];
          team = data['role'];
          return Text("done");
        }
        return CircularProgressIndicator();
      },
    );*/
    docRef.doc(uid).get().then((DocumentSnapshot documentSnapshot) => {
          if (documentSnapshot.exists)
            {data = documentSnapshot.data()}
          else
            {print("Document does not exist.")}
        });
    username = data['name'];
    team = data['role'];
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}

Future<bool> register(String email, String pass, String name, bool val) async {
  Map<String, dynamic> registration_data = {"name": name, "role": val};
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: pass);
    FirebaseFirestore.instance
        .collection('Users')
        .doc(FirebaseAuth.instance.currentUser.uid)
        .set(registration_data)
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user $error"));
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}
