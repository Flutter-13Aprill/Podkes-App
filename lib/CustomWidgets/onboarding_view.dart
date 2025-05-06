import 'package:flutter/material.dart';
import 'package:may6th/data/screen_extension.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/onboarding.png',
              height: context.screenHeight * 0.4,
              width: context.screenWidth * 0.77,
              fit: BoxFit.scaleDown,
            ),
            const Text(
              'Podkes',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(196, 196, 196, 1),
                fontFamily: "Inter",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
