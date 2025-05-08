import 'package:flutter/material.dart';

Widget leadinHomeWidget()  {
  return Builder(
    builder: (context) {
      return IconButton(
        icon: Image.asset(
          color: Colors.white,
          width: 22,
          height: 12,
          "assets/icons/menu.png",
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  );
}
