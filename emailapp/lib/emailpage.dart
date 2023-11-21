import 'dart:ui';

import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  final Widget emailBody;
  EmailPage({required this.emailBody});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() =>
      EmailPageState(emailBody: this.emailBody);
}

class EmailPageState extends State<EmailPage> {
  final Widget emailBody;

  EmailPageState({required this.emailBody});

  @override
  Widget build(BuildContext context) {
    double scale = 0.0;
    double _scaleFactor = 1.0;
    double _baseScaleFactor = 1.0;
    double _savedVal = 1.0;

    var wid = InteractiveViewer(
      child: Text("abcd"),
      minScale: 0.5,
      maxScale: 5,
    );
    return Scaffold(
      appBar: AppBar(
        title: const SelectableText("Email App"),
      ),
      body: InteractiveViewer(
        minScale: .5,
        maxScale: 3,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                buildHeader(),
                emailBody,
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(
                "Sender Name",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                "Subject",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          SelectableText(
            "Date and Time",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
