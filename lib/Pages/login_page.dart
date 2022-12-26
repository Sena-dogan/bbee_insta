// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.grey[300],
      //automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  Widget _body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(height: 50),

              //welcome back, you've been missed!
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 25),

              //username textfield

              //password textfield

              //forgot password?

              //sign in button

              //or continue with

              //google + apple sign in button

              //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
