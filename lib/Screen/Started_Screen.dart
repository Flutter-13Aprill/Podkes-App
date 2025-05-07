import 'package:flutter/material.dart';
import 'package:podkes_app/Screen/Main_Navigation_Screen.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Handle navigation between pages and move to main screen
  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainNavigationScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1A2B),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            // Swipable onboarding pages
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                itemCount: 3,
                itemBuilder:
                    (context, index) => Column(
                      children: [
                        SizedBox(height: 100),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(90),
                            topRight: Radius.circular(90),
                          ),
                          child: Image.asset(
                            'assets/Image-Started.png',
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          "Podkes",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "A podcast is an episodic series of spoken word\n"
                          "digital audio files that a user can download to a\n"
                          "personal device for easy listening.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
              ),
            ),
            // Page indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: _buildDot(isActive: _currentPage == index),
                ),
              ),
            ),
            SizedBox(height:130 ),
            // Navigation button
            ElevatedButton(
              onPressed: _nextPage,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Icon(
                Icons.arrow_forward,
                size: 30,
                color: Color(0xFF1E1A2B),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Page indicator dot
  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 20 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.deepPurple[800] : Colors.white38,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
