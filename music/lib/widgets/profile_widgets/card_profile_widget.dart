import 'package:flutter/material.dart';

Widget cardProfileWidget({required Color bgColor,required String iconPath,required String text,bool whitDivider=true}) {
  return Column(
    children: [
      ListTile(
        leading: Container(
          height: 32,
          width: 32,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:bgColor,
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage(iconPath),
            ),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      SizedBox(height: 8),
    if (whitDivider)
      Divider(
        height: 1,
        thickness: 1,
        color: Color.fromRGBO(255, 255, 255, 0.06)
      ),
    ],
  );
}
