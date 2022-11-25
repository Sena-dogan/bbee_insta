// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void showActionSheet(BuildContext context) {
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
              Text(
                "No More Ads",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Special offer for you",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 98.0),
                child: Text.rich(
                  TextSpan(
                    text: "If you subscribe now you will pay monthly ",
                    children: [
                      TextSpan(
                        text: "\$1.99",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " instead of \$2.99")
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    fixedSize: MaterialStateProperty.all(Size(350, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    )),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Subscribe and remove ads",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "No, thanks",
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
