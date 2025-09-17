import 'package:flutter/material.dart';
import 'package:votingapp/view/home.dart';
import 'package:votingapp/view/splash_screen.dart';

import '../view/creat_account.dart';
import '../view/login.dart';
import '../view/otp.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    Splash_Screen.id: (context) => Splash_Screen(),
    Home.id: (context) => Home(),
    Login.id: (context) =>Login(),
    Otp.id:(context) =>Otp(),
    CreatAccount.id:(context)=>CreatAccount(),
  };
}
