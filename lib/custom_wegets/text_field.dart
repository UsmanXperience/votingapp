import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:votingapp/diamension/diamension.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;


  const CustomTextField({super.key, required this.hintText, this.suffixIcon,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(

          fontFamily: 'Mulish',
          fontSize: AppDimensions.normal,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.grey[400],
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
