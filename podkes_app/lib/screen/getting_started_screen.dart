import 'package:flutter/material.dart';
import 'package:podkes_app/screen/bottom_navigation_screen.dart';
import 'package:podkes_app/widget/getting%20started/pageview_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Main widget for the Getting Started (onboarding) screen
class GettingStartedScreen extends StatefulWidget {
  const GettingStartedScreen({super.key});

  @override
  State<GettingStartedScreen> createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  // Controller to manage page navigation in PageView
  PageController pageController = PageController();
  // Tracks the current page index
  int imgValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2b),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 98),
            SizedBox(
              height: 470,
              child: PageView(
                controller: pageController,
                children: [PageviewBody(), PageviewBody(), PageviewBody()],
              ),
            ),
            SizedBox(height: 42),
            SizedBox(
              height: 8,
              child: SmoothPageIndicator(
                controller: pageController, // PageController
                count: 3,
                effect: WormEffect(), // your preferred effect
                onDotClicked: (index) {},
              ),
            ),
            SizedBox(height: 50),

            TextButton(
              onPressed: () {
                if (imgValue == 2) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationScreen(),
                    ),
                  );
                }
                pageController.animateToPage(
                  imgValue = imgValue + 1,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.arrow_right_alt, size: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
