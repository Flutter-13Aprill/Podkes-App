import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:podkes/extensions/screen_size.dart';
import 'package:podkes/screens/bottom_nav_screen.dart';
import 'package:podkes/widgets/onboarding_widgets/onboarding_page_indicator_widget.dart';
import 'package:podkes/widgets/onboarding_widgets/onboarding_page_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  // -- Controllers
  late final PageController _pageViewController;

  // -- Index of pages 
  int currentIndexPage = 0;

  @override
  void initState() {
    _pageViewController = PageController(
      initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    // Kill the controller before it kills you memory
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(

      body: SafeArea(

        child: Container(

          margin: EdgeInsets.symmetric(horizontal: 16),
          width: context.getWidth(),
          height: context.getHeight(),
          

          child: Column(

            children: [

              // -- PageView
              SizedBox(
                height: context.getHeight() * 0.583,
                width: context.getWidth(),
                child: PageView(
                  controller: _pageViewController,
                  onPageChanged: (value){
                    setState(() {
                      currentIndexPage = value;
                    });
                  },
                  children: [
                    OnboardingPageWidget(),
                    OnboardingPageWidget(),
                    OnboardingPageWidget(),
                  ],
                ),
              ),

              SizedBox(height: 40),


              // -- Page Indicator
              OnboardingPageIndicatorWidget(currentPageIndex: currentIndexPage),

              SizedBox(height: 140),

              TextButton(
                onPressed: (){
                  if(currentIndexPage == 2){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavScreen()) );
                  }else{
                    _pageViewController.nextPage(duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
                  }
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: SvgPicture.asset(
                    'assets/onboarding_screen/onboarding_screen_svgs/right_arrow.svg',
                    fit: BoxFit.scaleDown,
                    ),
                    ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}


