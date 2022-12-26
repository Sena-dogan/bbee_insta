// ignore_for_file: prefer_const_constructors

import 'package:fluro/fluro.dart';
import 'package:insta_ejderiya/Pages/login_page.dart';

var loginHandler = Handler(handlerFunc: ((context, parameters) {
  return LoginPage();
}));