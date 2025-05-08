import 'package:assignment9/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      backgroundColor: AppPalette.containerColor2,
      child: Image.asset("asset/image/image 1.png"),
    );
  }
}
