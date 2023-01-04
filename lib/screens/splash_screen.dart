import 'package:crud/screens/add_contacts.dart';
import 'package:flutter/material.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: centerImages(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddContact()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  customAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "Contacts",
        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }

  centerImages() {
    return Center(
      child: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/box.png"),
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              "You have no contacts yet",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          )
        ],
      )),
    );
  }
}
