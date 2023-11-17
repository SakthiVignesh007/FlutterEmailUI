import 'package:emailapp/emailbody1.dart';
import 'package:emailapp/emailbody2.dart';
import 'package:emailapp/emailbody3.dart';
import 'package:emailapp/emailpage.dart';
import 'package:emailapp/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: HomePage(),
    );
  }
}


