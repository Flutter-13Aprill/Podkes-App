import 'package:flutter/material.dart';

// -- External Package
import 'package:shimmer/shimmer.dart';

class DiscoverShimmerPodcastThumbnail extends StatelessWidget {

  /// [DiscoverShimmerPodcastThumbnail] represents a shimmer effect used to simulate the loading state 
  /// of a podcast thumbnail in the [DiscoverTrendingPodcasts] section.
  const DiscoverShimmerPodcastThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.blueGrey[200]!,
      child: Column(
        children: [

          Container(
            height: 200, 
            width:  200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4)
              ),
            ),

          SizedBox(height: 14),

          Container(
            height: 30, 
            width:  200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4)
             ),
            ),

            SizedBox(height: 4),

            Container(
              height: 14, 
              width:  200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4)
              ),
            )
        ],
      )
    );
  }
}