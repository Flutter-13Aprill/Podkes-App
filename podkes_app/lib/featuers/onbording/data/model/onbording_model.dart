import 'package:podkes_app/core/text/app_text.dart';

class OnbordingModel {
  final String image;
  final String title;
  final String? subTitle;

  OnbordingModel({required this.image, required this.title, this.subTitle});
}

List<OnbordingModel> onbordingData = [
  OnbordingModel(
    image: "assets/imeges/first.png",
    title: AppText.title1,
    subTitle: AppText.subTitle1,
  ),
  OnbordingModel(
    image: "assets/imeges/second.png",
    title: AppText.title2,
    subTitle: AppText.subTitle2,
  ),
  OnbordingModel(
    image: "assets/imeges/theerd.png",
    title: AppText.title3,
    subTitle: AppText.subTitle3,
  ),
];
