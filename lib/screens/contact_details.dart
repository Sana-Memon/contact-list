import 'package:crud/my_contacts.dart';
import 'package:crud/screens/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactDetails extends StatefulWidget {
  final String data;

  const ContactDetails({super.key, required this.data});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: Image.asset("assets/images/profile.png"),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  MyContacts.contacts[int.parse(widget.data)] +
                      " " +
                      MyContacts.surname[int.parse(widget.data)],
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  MyContacts.number[int.parse(widget.data)],
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    makeCustomTextField();
                    updateUser();
                  },
                  child:
                      Container(child: Image.asset("assets/images/edit.png"))),
              GestureDetector(
                onTap: () {
                  deleteUser(int.parse(widget.data));
                },
                child: Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("assets/images/delete.png")),
              ),
            ],
          ),
        ],
      ),
    );
  }

  customAppbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
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

  updateUser() {
    setState(() {
      MyContacts.contacts[int.parse(widget.data)] = "vb";
      MyContacts.surname[int.parse(widget.data)] = "vb";
      MyContacts.number[int.parse(widget.data)] = "vb";
    });
  }

  makeCustomTextField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Surname',
      ),
    );
  }

  deleteUser(i) {
    setState(() {
      MyContacts.contacts.removeAt(i);
      MyContacts.surname.removeAt(i);
      MyContacts.number.removeAt(i);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Contacts()),
      );
    });
    showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Contact has  been Deleted"),
        );
      },
    );
  }
}
