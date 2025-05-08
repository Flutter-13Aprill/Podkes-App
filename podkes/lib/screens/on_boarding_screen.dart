import 'package:flutter/material.dart';
import 'package:podkes/screens/explore_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  List<Map<String, String>> pages = [
    {
      'image': 'assets/girl.png',
      'title': 'Podkes',
      'subtitle':
          'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
    },
    {
      'image': 'assets/girl.png',
      'title': 'Podkes',
      'subtitle':
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    },
    {
      'image': 'assets/girl.png',
      'title': 'Podkes',
      'subtitle':
          'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    },
  ];

  void goToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ExploreScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: pages.length,
            onPageChanged: (index) => setState(() => _currentIndex = index),
            itemBuilder: (context, index) {
              final page = pages[index];
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(page['image']!, height: 300),
                          const SizedBox(height: 30),
                          Text(
                            page['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            page['subtitle']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 30),

                          const SizedBox(height: 20),
                          SmoothPageIndicator(
                            controller: _controller, // PageController
                            count: pages.length,
                            effect: const ExpandingDotsEffect(), // your preferred effect
                            onDotClicked: (index) {
                              _controller.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              );
            },
          ),

          Positioned(
            bottom: 50,
            right: 175,
            child: SizedBox(
              width: 60,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),

                  // minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  if (_currentIndex == pages.length - 1) {
                    goToHome();
                  } else {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Center(
                  child: Image.asset('assets/arrow.png', width: 50),
                ),
                // Icon(Icons.arrow_forward, color: const Color.fromARGB(255, 83, 83, 152), size: 40,)
                // Text(
                //   _currentIndex == _pages.length - 1 ? "Let's Start" : "Next",
                //   style: const TextStyle(fontSize: 24, color: Color.fromARGB(255, 126, 126, 126)),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
