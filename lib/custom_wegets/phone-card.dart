import 'package:flutter/material.dart';

import '../diamension/diamension.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({super.key});

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  String _selectedCountryCode = '+92';
  // Default Pakistan
  final TextEditingController _phoneController = TextEditingController();

  // country code list
  final List<Map<String, String>> countryCodes = [
    {'name': 'Afghanistan', 'code': '+93'},
    {'name': 'Albania', 'code': '+355'},
    {'name': 'Algeria', 'code': '+213'},
    {'name': 'Argentina', 'code': '+54'},
    {'name': 'Australia', 'code': '+61'},
    {'name': 'Austria', 'code': '+43'},
    {'name': 'Bangladesh', 'code': '+880'},
    {'name': 'Belgium', 'code': '+32'},
    {'name': 'Brazil', 'code': '+55'},
    {'name': 'Canada', 'code': '+1'},
    {'name': 'China', 'code': '+86'},
    {'name': 'Colombia', 'code': '+57'},
    {'name': 'Denmark', 'code': '+45'},
    {'name': 'Egypt', 'code': '+20'},
    {'name': 'Finland', 'code': '+358'},
    {'name': 'France', 'code': '+33'},
    {'name': 'Germany', 'code': '+49'},
    {'name': 'Greece', 'code': '+30'},
    {'name': 'Hong Kong', 'code': '+852'},
    {'name': 'Hungary', 'code': '+36'},
    {'name': 'Iceland', 'code': '+354'},
    {'name': 'India', 'code': '+91'},
    {'name': 'Indonesia', 'code': '+62'},
    {'name': 'Iran', 'code': '+98'},
    {'name': 'Iraq', 'code': '+964'},
    {'name': 'Ireland', 'code': '+353'},
    {'name': 'Italy', 'code': '+39'},
    {'name': 'Japan', 'code': '+81'},
    {'name': 'Kenya', 'code': '+254'},
    {'name': 'Kuwait', 'code': '+965'},
    {'name': 'Malaysia', 'code': '+60'},
    {'name': 'Mexico', 'code': '+52'},
    {'name': 'Nepal', 'code': '+977'},
    {'name': 'Netherlands', 'code': '+31'},
    {'name': 'New Zealand', 'code': '+64'},
    {'name': 'Nigeria', 'code': '+234'},
    {'name': 'Norway', 'code': '+47'},
    {'name': 'Oman', 'code': '+968'},
    {'name': 'Pakistan', 'code': '+92'},
    {'name': 'Philippines', 'code': '+63'},
    {'name': 'Poland', 'code': '+48'},
    {'name': 'Portugal', 'code': '+351'},
    {'name': 'Qatar', 'code': '+974'},
    {'name': 'Russia', 'code': '+7'},
    {'name': 'Saudi Arabia', 'code': '+966'},
    {'name': 'Singapore', 'code': '+65'},
    {'name': 'South Africa', 'code': '+27'},
    {'name': 'South Korea', 'code': '+82'},
    {'name': 'Spain', 'code': '+34'},
    {'name': 'Sri Lanka', 'code': '+94'},
    {'name': 'Sweden', 'code': '+46'},
    {'name': 'Switzerland', 'code': '+41'},
    {'name': 'Thailand', 'code': '+66'},
    {'name': 'Turkey', 'code': '+90'},
    {'name': 'United Arab Emirates', 'code': '+971'},
    {'name': 'United Kingdom', 'code': '+44'},
    {'name': 'United States', 'code': '+1'},
    {'name': 'Vietnam', 'code': '+84'},
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          DropdownButton<String>(
            value: _selectedCountryCode,
            underline: const SizedBox(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedCountryCode = newValue!;
              });
            },
            items: countryCodes.map((country) {
              return DropdownMenuItem<String>(
                value: country['code'],
                child: Text(country['code']!),
              );
            }).toList(),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration:  InputDecoration(
                hintText: "Enter phone number",
                hintStyle: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: AppDimensions.large,
                  fontWeight: FontWeight.w300,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
}
