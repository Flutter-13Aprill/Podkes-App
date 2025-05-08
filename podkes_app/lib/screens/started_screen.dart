import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podkes_app/screens/bottom_nav_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}
// A stateful screen that displays an onboarding flow for the app.
// It includes a `PageView` for swiping through 3 pages of content with images and descriptions.
// The screen has a "Next" button to navigate through pages or proceed to the main screen when the last page is reached.
// It uses `SmoothPageIndicator` to show page navigation dots and displays custom content widgets (`ContentOfPage`) for each page.

class _StartedScreenState extends State<StartedScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  final List<Widget> pages = [
    ContentOfPage(
      desciption:
          "A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.",
      title: "Podkes",
      imagePath: "assets/images/onboarding-image1.png",
    ),
    ContentOfPage(
      desciption:
          "Discover thousands of podcasts across genres—from education to entertainment—all in one place.",
      title: "Podkes",
      imagePath: "assets/images/onboarding-image2.png",
    ),

    ContentOfPage(
      desciption:
          "Follow your favorite creators and never miss an episode, even when you're offline.",
      title: "Podkes",
      imagePath: "assets/images/onboarding-image3.png",
    ),
  ];

  void onNext() {
    if (currentIndex < pages.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      onFinish();
    }
  }

  void onFinish() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BottomNavScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2d),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) => pages[index],
            ),

            Positioned(
              left: 150,
              right: 150,
              bottom: 50,
              child: InkWell(
                onTap: () {
                  onNext();
                },
                child: Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SvgPicture.asset("assets/icons/arrow.svg"),
                  ),
                ),
              ),
            ),
            SvgPicture.asset("assets/icons/arrow.svg"),
            Positioned(
              bottom: 200,
              left: 0,
              right: 0,

              child: Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: pages.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    expansionFactor: 2,
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xff525298),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentOfPage extends StatelessWidget {
  final String title;
  final String desciption;
  final String imagePath;

  const ContentOfPage({
    super.key,
    required this.desciption,
    required this.title,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 300),
        SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            desciption,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Color(0xffC4C4C4)),
          ),
        ),
      ],
    );
  }
}
