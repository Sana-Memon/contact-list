import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                height: 150,
                width: 150,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Text(
                      "Family",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    Text("16 members")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                height: 150,
                width: 150,
                color: Colors.redAccent,
                child: Column(
                  children: [
                    Text(
                      "Friends",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text("16 members")
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 150,
                width: 150,
                color: Colors.blueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "New Group",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                    Text("16 members")
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
