// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:insta_ejderiya/Pages/home_page.dart';
import 'package:insta_ejderiya/Pages/notifications.dart';
import 'package:insta_ejderiya/Pages/profile.dart';
import 'package:insta_ejderiya/Pages/search.dart';
// import 'package:insta_ejderiya/widgets/modal_bottom_sheet.dart';
import 'package:action_sheet/action_sheet.dart';
import 'package:insta_ejderiya/widgets/modal_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  final List<Widget> _pages = [
    UserHome(),
    SearchPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[i],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            gap: 10,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(90, 88, 85, 85),
            onTabChange: (value) {
              //TODO: Mobx
              setState(() {
                i = value;
              });
            },
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: Icons.search_rounded,
                text: "Search",
              ),
              GButton(
                icon: Icons.favorite_border_rounded,
                text: "Likes",
              ),
              GButton(
                icon: Icons.person_outline_outlined,
                text: "Profile",
                onPressed: () {
                  showActionSheet(context);
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
