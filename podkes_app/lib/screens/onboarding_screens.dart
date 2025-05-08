import 'package:flutter/material.dart';
import 'package:podkes_app/extensions/screens/get_size_screen.dart';
import 'package:podkes_app/models/onboarding_content.dart';
import 'package:podkes_app/screens/bottom_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//Onboarding pages
class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final pageController = PageController(); // Controller for pages
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 29, 43, 1),

      // PageView to navigate through the onboarding pages
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          itemCount: onboardingContent.length,
          onPageChanged: (index) {
            setState(() {
              pageNumber = index;
            });
          },
          itemBuilder:
              // Building the page view
              (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Onboarding image
                    Image.asset(
                      onboardingContent[index].imageUrl,
                      width: context.getWidth() + 50,
                      height: context.getHeight() / 3,
                      fit: BoxFit.contain,
                    ),
                    // Onboarding title
                    Text(
                      onboardingContent[index].title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Onboarding subtitle
                    Text(
                      onboardingContent[index].subTitle,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    // Page indicator
                    SmoothPageIndicator(
                      controller: pageController,
                      count: onboardingContent.length,
                      effect: ExpandingDotsEffect(dotHeight: 6, dotWidth: 6),
                    ),
                    SizedBox(height: 70),
                    // Next button
                    IconButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        if (pageNumber < onboardingContent.length - 1) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigation(),
                            ),
                          );
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.arrow_forward_outlined),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
