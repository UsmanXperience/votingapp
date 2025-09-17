import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:votingapp/custom_wegets/custom_elevated_button.dart';
import 'package:votingapp/diamension/diamension.dart';
import 'package:votingapp/extension/extension.dart';
import 'login.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    final screenHeight = context.screenHeight;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Skip Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, top: 30, bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: AppDimensions.fifteen,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // PageView
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                // Page 1
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    Image.asset(
                      "assets/first.png",
                      height: screenHeight * 0.4,
                      width: screenWidth * 0.8,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Well come to Votely",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppDimensions.fifteen,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      "The online voting application\nCreate your account and stay\ntuned",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppDimensions.normal,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Page 2
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    Image.asset(
                      "assets/second.png",
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.7,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Stay Tuned",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppDimensions.fifteen,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Follow each candidate's election\ncampaign",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppDimensions.normal,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Page 3
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    Image.asset(
                      "assets/third.png",
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.7,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Make your Choice",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppDimensions.fifteen,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Vote for your favorite candidate,\nand view the results in real time",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppDimensions.normal,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Dots Indicator
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(height: 20),

          // Next / Finish Button
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Elevated_Button(
              text: currentPage == 2 ? 'Finish' : 'Next',
              textColor: Colors.white,
              backgroundcolor: const Color(0xFF4B2AFA),
              onPressed: () {
                if (currentPage < 2) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.pushNamed(context, Login.id);
                }
              },
              horizontalPadding: screenWidth * 0.35,
              verticalPadding: screenHeight * 0.015,
            ),
          ),
        ],
      ),
    );
  }
}
