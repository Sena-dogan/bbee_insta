// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_ejderiya/Pages/login_page.dart';
import 'package:insta_ejderiya/utils/routemanager/application.dart';
import 'package:insta_ejderiya/utils/routes/routes.dart';
import 'package:insta_ejderiya/utils/stories.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List users = [
    "Sena",
    "Ero",
    "Spike",
    "Ejderiya",
    "Bumblebee",
    "CamaroBee",
    "EroFanClub"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0, // Appbar's shadow
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Application.router.navigateTo(context, Routes.login,
                      transition: TransitionType.inFromLeft);
                },
                child: Text(
                  "Instagram",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontFamily: "Billabong"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                  Icon(
                    FontAwesomeIcons.solidComments,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, i) {
            return StoryBuble(text: users[i]);
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
