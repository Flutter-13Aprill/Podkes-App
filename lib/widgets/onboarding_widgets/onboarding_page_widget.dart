import 'package:flutter/material.dart';

// -- Extensions
import 'package:podkes/extensions/screen_size.dart';

class OnboardingPageWidget extends StatelessWidget {

  /// [OnboardingPageWidget] represents a single page within a [PageView] widget.
  const OnboardingPageWidget({super.key});

  final String description = 'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.';
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),

        Image.asset('assets/onboarding_screen/onboarding_screen_images/girl_with_headphone.png'),

        SizedBox(height: 36),

        Text('Podkes', style: Theme.of(context).textTheme.titleLarge),

        SizedBox(height: 16),

        SizedBox(
          width: context.getWidth() * 0.9,
          child: Text(description, textAlign: TextAlign.center , style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}
