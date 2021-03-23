import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String username = "abcd";
bool team = false;
FirebaseFirestore db = FirebaseFirestore.instance;

Map<String, dynamic> dataset;

List chapter = [];
List mprojects = [];
List mproj_name = [];
List mproj_desc = [];
List mproj_budget = [];

List dlvproj_name = [];
List dlvproj_desc = [];
List dlvproj_budget = [];
List dlvproj_cust = [];

List team_name = [];
List team_desc = [];

List response_name = ["ABC", "DEF", "GHI"];
List response_price = [
  "Rs. 7000",
  "Rs.5500",
  "Plans Available on Website",
  "Exciting Plans Available"
];
List response_desg = [
  "App Dev",
  "App Dev",
  "Delivery Service",
  "Delivery Service"
];

List contact_name = ["ABC"];
List contact_mail = ["abc.official@gmail.com"];
List contact_desg = ["Developer"];

String id = 'XL5y3b7VHQcZ2VvEN16pzjzezuH2';
List pottery_course_name = ['Pottery 101', 'Practical Pottery'];
List pottery_course_author = ['John Gates', 'Sarah Nash'];

List pottery_chapter_name = [
  'Introduction',
  'Know your tools',
  'Types of Clay',
  'Designs'
];

String course_desc =
    "This chapter introduces you to the basics of pottery. Keep learning!";
