// ignore_for_file: prefer_const_constructors

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ejderiya/home.dart';
import 'package:insta_ejderiya/assets.dart';
import 'package:insta_ejderiya/utils/routemanager/application.dart';
import 'package:insta_ejderiya/utils/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

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