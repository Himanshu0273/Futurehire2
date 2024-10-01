// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:futurehire/profilePage.dart';
import 'package:futurehire/skills.dart';
import 'homepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'skills_list.dart';
// import 'package:futurehire/skills.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

// List of all the pages

  final List<Widget> _screens = [
    HomePage(),
    Skills(),
    Scaffold(
      body: Center(
        child: Text('Coming Soon'),
      ),
    ),
    Scaffold(
        body: Center(
      child: Text('Coming Soon'),
    )),

    // Add more screens here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: GNav(
            gap: 8,
            // Need to make changes here for better looking bottom bar
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white,
            tabBorderRadius: 10.0,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            // padding: EdgeInsets.all(20.0),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.article,
                text: 'Skills',
              ),
              GButton(
                icon: Icons.explore,
                text: 'Explore',
              ),
              GButton(
                icon: Icons.account_circle,
                text: 'Profile',
              ),
              // GButton(icon: Icons.forum)
            ],
          ),
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
