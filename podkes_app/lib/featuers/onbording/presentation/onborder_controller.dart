import 'package:flutter/material.dart';
import 'package:podkes_app/core/function/navigation.dart';
import 'package:podkes_app/featuers/Explore/presentation/pages/explore_screen.dart';
import 'package:podkes_app/featuers/onbording/data/model/onbording_model.dart';

class OnborderController {
  final PageController controller = PageController();
  int currentPage = 0;

  void checkNavigation(BuildContext context, int index) {
    if (index == onbordingData.length - 1) {
      customReplacmentNaviagte(context, ExploreScreen());
    }
    controller.nextPage(
      duration: Duration(microseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
