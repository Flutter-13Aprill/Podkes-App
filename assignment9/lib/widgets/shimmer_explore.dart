import 'package:assignment9/extensions/get_size.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerExplore extends StatelessWidget {
  const ShimmerExplore({super.key});
//shimmer make the container grey based on width and height and give it animation
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors( baseColor: Colors.grey, highlightColor: Colors.white, child: Container(color: Colors.grey,
        height: context.getHeight() * 0.8,
        width: context.getWidth() * 0.375,
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.getWidth() ,
              height: context.getHeight()*0.2 ,
            ),
            Container(
              width: context.getWidth() * 0.35,
             
            ),
          ],
        ),
      ));
  }
}

