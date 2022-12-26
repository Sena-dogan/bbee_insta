// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatelessWidget {
  MyTextFieldWidget({
    required this.title,
    required this.icon,
    super.key,
    required this.controller,
    // this.minLine = 1,
    // this.maxLine = 1,
    this.keyboardType = TextInputType.text,
  });

  final String title;
  final IconData icon;
  final TextEditingController controller;
  // final int minLine;
  // final int maxLine;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        cursorColor: Color.fromARGB(255, 58, 35, 96),
        // minLines: minLine,
        // maxLines: maxLine,
        keyboardType: keyboardType,
        obscureText: false,
        decoration: InputDecoration(
          label: Text(title),
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 58, 35, 96)),
          ),
        ),
      ),
    );
  }
}
