import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:may6th/CustomWidgets/onboarding_view.dart';
import 'package:may6th/Screens/bottom_navigation.dart';
import 'package:may6th/data/screen_extension.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Widget> _views = [
    OnboardingView(),
    OnboardingView(),
    OnboardingView(),
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color.fromRGBO(31, 29, 43, 1),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {
            if (_currentPage < _views.length - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else {
              // Navigate to the next screen
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const BottomNavigation(),
                ),
              );
            }
          },
          child: const Icon(
            Icons.arrow_forward,
            color: Color.fromRGBO(82, 82, 152, 1),
          ),
        ),
      ),
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: context.screenHeight * 0.06),
            SizedBox(
              height: context.screenHeight * 0.57,
              width: context.screenWidth * 0.64,
              child: PageView(
                controller: _pageController,

                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: _views,
              ),
            ),
            DotsIndicator(
              dotsCount: _views.length,

              position: _currentPage.toDouble(),
              decorator: DotsDecorator(
                activeColor: Color.fromRGBO(82, 82, 152, 1),
                color: Color.fromRGBO(123, 128, 133, 1),
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
