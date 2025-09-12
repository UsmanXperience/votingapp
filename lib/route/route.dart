import 'package:flutter/material.dart';
import 'package:votingapp/view/home.dart';
import 'package:votingapp/view/splash_screen.dart';

import '../view/home1.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    Splash_Screen.id: (context) => Splash_Screen(),
    Home.id: (context) => Home(),
    Home1.id: (context) =>Home1(),
  };
}
