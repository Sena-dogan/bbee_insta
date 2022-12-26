// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:insta_ejderiya/widgets/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(238, 202, 197, 216),
      //automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  Widget _body(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 202, 197, 216),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),

              //logo
              Icon(
                Icons.lock,
                size: 100,
                // shadows: <Shadow>[
                //   Shadow(
                //     color: Color.fromARGB(165, 58, 35, 96),
                //     blurRadius: 3.0,
                //   )
                // ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.001),
              Divider(color: Color.fromARGB(141, 58, 35, 96), thickness: 1.0, indent: 160.0, endIndent: 160.0,),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),

              //welcome back to Instagram!
              Text(
                "Welcome back!\n           to,",
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 35, 96),
                  fontSize: 14,
                ),
              ),
              Text(
                "Instagram",
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 35, 96),
                    fontSize: 70,
                    fontFamily: "Billabong"),
              ),

              SizedBox(height: 25),

              // textfields
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    //username textfield
                    MyTextFieldWidget(
                      title: "User Name",
                      icon: Icons.person_outline,
                      controller: usernameController,
                    ),

                    SizedBox(height: 10),

                    //password textfield
                    MyTextFieldWidget(
                      title: "Password",
                      icon: Icons.password_outlined,
                      controller: passwordController,
                    ),

                    SizedBox(height: 10),

                    // forgot password?
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 58, 35, 96)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

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
