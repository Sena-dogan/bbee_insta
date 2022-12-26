import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:insta_ejderiya/utils/routes/routehandlers.dart';

class Routes {
  Routes._();

  // Static Variables
  static const String login = '/login';

  static void configureRoutes(FluroRouter router) {
    // Routers
    router.define(login, handler: loginHandler);

    router.notFoundHandler = Handler(handlerFunc: ((context, parameters) {
      debugPrint("Route not found");
      return;
    }));
  }
}