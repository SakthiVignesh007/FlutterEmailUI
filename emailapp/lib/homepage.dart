import 'package:emailapp/emailbody1.dart';
import 'package:emailapp/emailbody2.dart';
import 'package:emailapp/emailbody3.dart';
import 'package:emailapp/emailpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EmailPage(emailBody: MyEmailBody1())));
            },
            child: SelectableText("Go to Mail 1")),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EmailPage(emailBody: MyEmailBody2())));
            },
            child: SelectableText("Go to Mail 2")),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EmailPage(emailBody: MyEmailBody3())));
            },
            child: SelectableText("Go to Mail 3"))
      ],
    ));
  }
}
