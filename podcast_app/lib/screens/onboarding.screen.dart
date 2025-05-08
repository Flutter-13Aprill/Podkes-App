import 'package:flutter/material.dart';
import 'package:podcast_app/screens/Intros/first_page_view.dart';
import 'package:podcast_app/screens/explore_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController pageViewController = PageController();
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: Stack(children: [
        PageView(
          controller: pageViewController,
          children: const [ FirstPage(),  FirstPage(), FirstPage()],
        ),
        Container(
            alignment: const Alignment(0, 0.58),
            child:
                SmoothPageIndicator(controller: pageViewController, count: 3)),
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                pageNum == 2
                    ? Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExploreScreen()))
                    : pageViewController.animateToPage(pageNum += 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
              },
              child: Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 82, 82, 152),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
