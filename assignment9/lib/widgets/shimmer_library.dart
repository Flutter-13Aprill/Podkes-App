import 'package:assignment9/extensions/get_size.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLibrary extends StatelessWidget {
  const ShimmerLibrary({super.key});
//shimmer make the container grey based on width and height and give it animation

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child:  Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 30, 40, 54),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: context.getWidth() * 0.73,
                  height: context.getHeight() * 0.33,
        ),
    );
  }
}
