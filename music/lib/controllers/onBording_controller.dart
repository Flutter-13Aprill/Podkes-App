import 'package:flutter/material.dart';
import 'package:music/models/onbording_model.dart';
import 'package:music/views/home_view.dart';
import 'package:music/widgets/onbording_widget/onBording_widget.dart';

class OnbordingController {
  PageController moveTo = PageController(initialPage: 0, viewportFraction: 1);
  int currentPage = 0;
  List<Widget> onBordingList = onbordingDemo.map((item)=>onBordingWidget(item)).toList();

  clickedButton(BuildContext context) {
    print(currentPage);
    if (currentPage != 2) {
      currentPage++;
      moveTo.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
      
    } else {
      Navigator.pushReplacement(
       context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
    }
  }

}
