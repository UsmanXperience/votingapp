import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final VoidCallback? onTap;

  const CustomBackButton({
    super.key,
    this.backgroundColor = const Color(0xFF4B2AFA),
    this.iconColor = Colors.white,
    this.size = 22,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap??() => Navigator.pop(context),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding:  EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_back_ios,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
