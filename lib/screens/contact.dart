import 'package:crud/my_contacts.dart';
import 'package:crud/screens/add_contacts.dart';
import 'package:crud/screens/contact_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  // List<String> names = [
  //   "Contact1",
  //   "Contact2",
  //   "Contact3",
  //   "Contact4",
  //   "Contact5",
  //   "Contact6",
  //   "Contact7",
  //   "Contact8",
  //   "Contact9",
  //   "Contact10",
  //   "Contact11"
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: ListView.builder(
          itemCount: MyContacts.contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return contactList(index);
          }),
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
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
      ],
    );
  }

  contactList(int i) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ContactDetails(data: i.toString());
        }));
      },
      contentPadding: EdgeInsets.all(15),
      leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage("assets/images/profile.png")),
      title: Text(
        MyContacts.contacts[i].toString() +
            " " +
            MyContacts.surname[i].toString(),
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      subtitle: Text(MyContacts.number[i].toString()),
      trailing: Icon(Icons.phone, color: Colors.green),
    );
  }
}
