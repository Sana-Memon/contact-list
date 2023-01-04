import 'package:crud/my_contacts.dart';
import 'package:crud/screens/contact.dart';
import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController surnameTextController = TextEditingController();
  TextEditingController numberTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myCustomAppBar(),
        body: SingleChildScrollView(
          child: Column(children: [
            customTextField1(),
            customTextField2(),
            customTextField3()
          ]),
        ));
  }

  myCustomAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      title: const Text(
        "Add",
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.check,
            color: Colors.black,
          ),
          onPressed: () {
            addUser();
          },
        ),
      ],
    );
  }

  customTextField2() {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Surname",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: surnameTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Surname',
              ),
            ),
          ),
        ]));
  }

  customTextField1() {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: nameTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name',
              ),
            ),
          ),
        ]));
  }

  customTextField3() {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Phone Number",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              controller: numberTextController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '343 ___ ___',
              ),
            ),
          ),
        ]));
  }

  addUser() {
    setState(() {
      if (nameTextController.text != '') {
        MyContacts.contacts.add(nameTextController.text);
        MyContacts.surname.add(surnameTextController.text);
        MyContacts.number.add(numberTextController.text);
      }
      nameTextController.clear();
      surnameTextController.clear();
      numberTextController.clear();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Contacts()),
      );
    });
  }
}
