// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MBottomSheet {
  String title;
  String subtitle;
  String primaryText;
  String? coloredText;
  String? secondaryText;
  String acceptButtonText;
  String rejectButtonText;
  void Function() acceptFunc;

  MBottomSheet(
      {required this.title,
      required this.subtitle,
      required this.primaryText,
      this.coloredText = "",
      this.secondaryText = "",
      required this.acceptButtonText,
      required this.rejectButtonText,
      required this.acceptFunc});

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 380,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60.0,
                ),
                //TITLE
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                //SUBTITLE
                Text(
                  subtitle,
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //PRIMARYTEXT, COLOREDTEXT, SECONDARYTEXT
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: (MediaQuery.of(context).size.width / 7),
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: primaryText,
                      children: [
                        TextSpan(
                          text: coloredText != null ? " $coloredText " : "",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "$secondaryText")
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                //ACCEPT BUTTON
                ElevatedButton(
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    fixedSize: MaterialStateProperty.all(Size(350, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    acceptFunc();
                    Navigator.pop(context);
                  },
                  child: Text(
                    acceptButtonText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                //REJECT BUTTON
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    rejectButtonText,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
