import 'package:flutter/material.dart';
import 'package:votingapp/custom_wegets/phone-card.dart';
import 'package:votingapp/custom_wegets/text_field.dart';
import 'package:votingapp/extension/extension.dart';

import '../custom_wegets/custom_back_button.dart';
import '../custom_wegets/custom_elevated_button.dart';
import '../diamension/diamension.dart';
import 'login.dart';

class CreatAccount extends StatelessWidget {
  static const String id = 'CreatAccount';


  const CreatAccount({super.key});

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
            padding:  EdgeInsets.symmetric(horizontal: screenWidth*0.05, vertical: screenHeight*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(),
                SizedBox(height: screenHeight*0.1),

                Text(
                  'Creat Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimensions.twenty4,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),


                const CustomTextField(hintText: 'First Name'),
                SizedBox(height: screenHeight * 0.03),
                const CustomTextField(hintText: 'Last Name'),
                SizedBox(height: screenHeight * 0.03),
                const CustomTextField(hintText: 'Vote Card Number'),
                SizedBox(height: screenHeight * 0.03),
                const PhoneInput(),
                SizedBox(height: screenHeight * 0.03),
                const CustomTextField(hintText: 'Password'),
                SizedBox(height: screenHeight * 0.03),
                const CustomTextField(hintText: 'Password'),
                SizedBox(height: screenHeight * 0.05),


                Elevated_Button(
                  text: 'Enter',
                  textColor: Colors.white,
                  backgroundcolor: const Color(0xFF4B2AFA),
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                  horizontalPadding: screenWidth * 0.36,
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
