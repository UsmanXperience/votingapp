import 'package:flutter/material.dart';
import 'package:votingapp/custom_wegets/custom_elevated_button.dart';
import 'package:votingapp/diamension/diamension.dart';
import 'package:votingapp/extension/extension.dart';
import 'package:votingapp/view/otp.dart';

class Login extends StatelessWidget {
  static const String id = 'Home1';

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = (context).screenWidth;
    final screenHeight = (context).screenHeight;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 20),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/votinglogo.png',
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.3,
                  ),
                ),

                Text(
                  'Well come to Votley',
                  style: TextStyle(
                    color: Color(0xCF0F1020),
                    fontSize: AppDimensions.overlarge,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'vote card number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                    suffixIcon: const Icon(Icons.person),
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot',
                    style: TextStyle(
                      fontFamily: 'Popins',
                      color: Color(0xFF4B2AFA),
                      fontWeight: FontWeight.w500,
                      fontSize: AppDimensions.extralarge,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Elevated_Button(
                  text: 'Enter',
                  textColor: Colors.white,
                  backgroundcolor: Color(0xFF4B2AFA),
                  onPressed: () {
                    Navigator.pushNamed(context, Otp.id);
                  },
                  horizontalPadding: screenWidth * 0.35,
                  verticalPadding: screenHeight * 0.018,
                ),
                SizedBox(height: screenHeight * 0.02),
                Elevated_Button(
                  text: 'Creat Account',
                  textColor: Colors.black,
                  backgroundcolor: Colors.transparent,
                  onPressed: () {
                    Navigator.pushNamed(context, Otp.id);
                  },
                  horizontalPadding: screenWidth * 0.23,
                  verticalPadding: screenHeight * 0.018,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
