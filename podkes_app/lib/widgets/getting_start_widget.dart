import 'package:flutter/material.dart';
import 'package:podkes_app/screens/getting_start_screen.dart';
import 'package:podkes_app/widgets/bottomNavigation_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GettingStart extends StatefulWidget {
  const GettingStart({super.key});

  @override
  State<GettingStart> createState() => _GettingStartState();
}

final PageController _controler = PageController();

class _GettingStartState extends State<GettingStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 25, 43),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: PageView(
                controller: _controler,
                children: [
                  GettingStartScreen(),
                  GettingStartScreen(),
                  GettingStartScreen(),
                ],
              ),
            ),
            SizedBox(height: 40),
            SmoothPageIndicator(
              controller: _controler,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(70, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomnavigationWidget(),
                  ),
                );
              },
              child: Icon(Icons.arrow_forward, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
