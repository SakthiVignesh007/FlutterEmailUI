
import 'dart:ui';

import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget{
  final Widget emailBody;

  EmailPage({required this.emailBody});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email App"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              buildHeader(),
              emailBody,
            ]),
          ),
        ],
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
              Text(
                "Sender Name",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Subject",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            "Date and Time",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

}
