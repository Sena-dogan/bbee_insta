import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ejderiya/home_page.dart';
import 'package:insta_ejderiya/assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      darkTheme: ThemeData(primarySwatch: primaryBlack),
      debugShowCheckedModeBanner: false,
    );
  }
}
