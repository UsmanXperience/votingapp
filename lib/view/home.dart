import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:votingapp/custom_wegets/custom_elevated_button.dart';
import 'home1.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Skip Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 20, top: 50, bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Home1.id);
                  },
                  child:  Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 20,
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
                     SizedBox(height: 80),
                    Image.asset("assets/first.png", height: 263, width: 283),
                     SizedBox(height: 80),
                     Text(
                      "Well come to Votely",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                     SizedBox(height: 30),
                     Text(
                      "The online voting application\nCreate your account and stay\ntuned",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Page 2
                Column(
                  children: [
                     SizedBox(height: 80),
                    Image.asset("assets/second.png", height: 253, width: 260),
                     SizedBox(height: 80),
                     Text(
                      "Stay Tuned",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                     SizedBox(height: 30),
                     Text(
                      "Follow each candidate's election\ncampaign",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                // Page 3
                Column(
                  children: [
                     SizedBox(height: 80),
                    Image.asset("assets/third.png", height: 264, width: 252),
                     SizedBox(height: 80),
                     Text(
                      "Make your Choice",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                     SizedBox(height: 30),
                     Text(
                      "Vote for your favorite candidate,\nand view the results in real time",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
          Elevated_Button(
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
                Navigator.pushNamed(context, Home1.id);
              }
            },
            horizontalPadding: 100,
            verticalPadding: 16,
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}
