import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPodcastThumbnailWidget extends StatelessWidget {
  const ShimmerPodcastThumbnailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        width: 170,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: double.infinity,
                height: 180,
                color: Colors.grey.shade700,
              ),
            ),
            Container(height: 14, width: 140, color: Colors.grey.shade700),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 12,
                width: 80,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
