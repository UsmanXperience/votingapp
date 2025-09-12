import 'package:flutter/material.dart';
import 'package:votingapp/view/home.dart';

class Splash_Screen extends StatefulWidget {
  static const String id = 'SplashScreen';

  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _SplashState();
}

class _SplashState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Home.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/votinglogo.png',
              width: 150,
              height: 150,
            ),
          ),
          Text(
            'VOTELY',
            style: TextStyle(
              fontSize: 40,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
