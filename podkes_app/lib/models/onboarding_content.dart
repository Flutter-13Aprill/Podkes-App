//Class represent OnboardingContent
class OnboardingContent {
  String imageUrl;
  String title;
  String subTitle;

  // Constructor to initialize
  OnboardingContent({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });
}

// List of  category
final List<OnboardingContent> onboardingContent = [
  OnboardingContent(
    imageUrl: 'assets/images/obboarding1_image.png',
    title: 'Podkes',
    subTitle:
        'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
  ),
  OnboardingContent(
    imageUrl: 'assets/images/obboarding2_image.png',
    title: 'For podcast lovers',
    subTitle:
        'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
  ),
  OnboardingContent(
    imageUrl: 'assets/images/obboarding3_image.png',
    title: 'Appealing and interactive platform',
    subTitle:
        'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
  ),
];
