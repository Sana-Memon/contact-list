import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MakingBottomNav extends StatefulWidget {
  const MakingBottomNav({super.key});

  @override
  State<MakingBottomNav> createState() => _MakingBottomNavState();
}

class _MakingBottomNavState extends State<MakingBottomNav> {
  int _selectedIndex = 0; //New

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Demo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Group',
          ),
        ],
      ),
    );
  }
}
