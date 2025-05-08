import 'package:flutter/material.dart';
import 'package:music/models/onbording_model.dart';

Widget onBordingWidget(OnbordingModel onBordingMoeld) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 42, top: 98),
        height: 317,
        width: 240,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(onBordingMoeld.imagePath)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
      ),
      Text(
        onBordingMoeld.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 8),
      Text(
        onBordingMoeld.content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(196, 196, 196, 1),
        ),
      ),
    ],
  );
}
