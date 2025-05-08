import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// This widget creates a shimmer effect for a podcast thumbnail placeholder.
// - The shimmer effect is applied to a column containing a placeholder image, title, and subtitle of a podcast.
// - The shimmer effect uses `Shimmer.fromColors` with a custom base and highlight color for glowing animation.
// - The image, title, and subtitle placeholders are created using `Container` widgets with fixed sizes and grey color to simulate the loading state.

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
