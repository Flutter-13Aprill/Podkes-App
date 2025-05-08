import 'package:assignment9/extensions/get_size.dart';

import 'package:assignment9/widgets/bottom_bar_handler.dart';
import 'package:assignment9/widgets/page_indicator.dart';
import 'package:flutter/material.dart';

class PageViewHomeScreen extends StatefulWidget {
  const PageViewHomeScreen({super.key});

  @override
  State<PageViewHomeScreen> createState() => _PageViewHomeScreenState();
}

//here where the page view for the podkes
class _PageViewHomeScreenState extends State<PageViewHomeScreen> {
  // currentPage holder
  int currentPage = 0;

// page view controller 
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      body: SafeArea(
        child: Center(
          child: Container(
            height: context.getHeight(),
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                SizedBox(height: 25,),
                Container(
                  height: context.getHeight() * 0.53,
                  width: context.getWidth() * 0.7,
                  child: PageView(
                    controller: pageController,
                    //set new page on swipe
                    onPageChanged:
                        (value) => setState(() {
                          currentPage = value;
                        }),
                        
                    children: [
                      //page1
                      Container(
                        child: Column(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/project_images/girl_page_view.png',
                            ),
                            Text(
                              'Podkes',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 196, 196, 196),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),//page 2
                      Container(
                        child: Column(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/project_images/girl_page_view.png',
                            ),
                            Text(
                              'Podkes',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 196, 196, 196),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //page3
                      Container(
                        child: Column(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/project_images/girl_page_view.png',
                            ),
                            Text(
                              'Podkes',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 196, 196, 196),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //indicator widget that is given current page so it can move with swiping
                PageIndicator(currentPage: currentPage),
                SizedBox(height: 100),
               
                Container(
                  width: context.getWidth() * 0.165,
                  height: context.getHeight() * 0.074,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {
                    
                      pageController.nextPage(
                        duration: Duration(milliseconds: 350),
                        curve: Curves.easeIn,
                      );
                      //go to the bottom bar handler and it display ExploreScreen
                      if(currentPage == 2){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomBarHandler()));
                      }
                      setState(() {});
                    
                    
                    },
                    
                    icon: Icon(Icons.arrow_forward,color: Color.fromARGB(255, 82, 82, 152,),size: 35,weight: 11,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
