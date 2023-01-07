import 'package:crud/screens/group_screen.dart';
import 'package:crud/screens/recent.dart';
import 'package:crud/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MakingBottomNav extends StatefulWidget {
  const MakingBottomNav({super.key});

  @override
  State<MakingBottomNav> createState() => _MakingBottomNavState();
}

class _MakingBottomNavState extends State<MakingBottomNav> {
  int _selectedIndex = 0;
  List<Widget> _widgeteOption = <Widget>[
    Recent(),
    SpashScreen(),
    GroupScreen()
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgeteOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
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
        onTap: onItemTap,
      ),
    );
  }
}
