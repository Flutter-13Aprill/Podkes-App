import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 160,
              color: Colors.black,
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              width: 160,
              height: 8,
              color: Colors.black,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 160,
              height: 8,
              color: Colors.black,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 160,
              height: 5,
              color: Colors.black,
            ),
          ],
        ));
  }
}

class ShimmerCircle extends StatelessWidget {
  const ShimmerCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.25),
        ),
      ),
    );
  }
}
