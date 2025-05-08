import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';

Widget buildShimmerItem(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[600]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: context.getheight() * 0.24,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: context.getheight() * 0.05,
            width: context.getwidth() * 0.35,
            color: Colors.grey,
          ),
          const SizedBox(height: 6),
          Container(
            height: context.getheight() * 0.02,
            width: context.getwidth() * 0.25,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }