import 'package:flutter/material.dart';
import 'package:votingapp/custom_wegets/custom_back_button.dart';
import 'package:votingapp/extension/extension.dart';

import '../diamension/diamension.dart';

class Otp extends StatelessWidget {
  static const String id = 'Otp';

  const Otp({super.key});

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
            padding: EdgeInsets.symmetric(
              vertical: screenWidth * 0.08,
              horizontal: screenHeight * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(),
                SizedBox(height: screenHeight*0.1),

                Text(
                  'Almost there',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimensions.twenty4,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight*0.1),
                Text(
                  'Please enter the 6-digit code sent to\n +285 84 372 9360 for verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimensions.eighteen,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
