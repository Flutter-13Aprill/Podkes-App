import 'package:flutter/material.dart';

Widget containerImage({
  required String imageCoverPath,
  required Color bgColor,
  required double width,
  required double higth,
  required bool withScale,
   bool canCreate=false,
  
}) {
  return Container(
    height: higth,
    width: width,
    margin: EdgeInsets.only(bottom: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
              border: Border.all(
          color: canCreate ? Color.fromRGBO(196, 196, 196, 1) : bgColor ,
          width: 2
        ),
      color: bgColor,
      image: DecorationImage(
        scale: withScale?  0.6 :1,
        alignment: canCreate?Alignment.center: Alignment.bottomCenter,
        image: AssetImage(imageCoverPath),
      ),
    ),
  );
}
