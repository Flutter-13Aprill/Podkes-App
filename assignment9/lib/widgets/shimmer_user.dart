import 'package:assignment9/extensions/get_size.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerUser extends StatelessWidget {
  const ShimmerUser({super.key});
//shimmer make the container grey based on width and height and give it animation

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors( baseColor: Colors.grey, highlightColor: Colors.white, child: Container(
                width: context.getWidth() * 0.31,
                height: context.getHeight() * 0.14,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 37, 40, 54),
                  borderRadius: BorderRadius.circular(100),
                ),
              ));
  }
}