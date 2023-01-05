import 'package:crud/screens/add_contacts.dart';
import 'package:crud/screens/contact.dart';
import 'package:crud/screens/contact_details.dart';
import 'package:crud/screens/making_bottom_nav.dart';
import 'package:crud/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MakingBottomNav(),
    );
  }
}
