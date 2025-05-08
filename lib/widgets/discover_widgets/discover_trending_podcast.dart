import 'package:flutter/material.dart';

// -- Model
import 'package:podkes/model/trending_podcast.dart';

// -- Extension
import 'package:podkes/extensions/screen_size.dart';

class DiscoverTrendingPodcast extends StatelessWidget {

/// [DiscoverTrendingPodcast] represents a component for displaying a single trending podcast,
/// which will be shown in the [DiscoverTrendingPodcasts] grid.
  const DiscoverTrendingPodcast({super.key, required this.product});
  
  final TrendingPodcast product;

  @override
  Widget build(BuildContext context) {
    return Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: context.getWidth(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4)
            ),
            child: Image.asset(product.imagePath,fit: BoxFit.contain,
              ),
          ),
            
          SizedBox(height: 16,),
            
          Text(product.podcastName,  style: Theme.of(context).textTheme.titleSmall,),

          SizedBox(height: 4),

          Text(product.author, style: Theme.of(context).textTheme.bodySmall,)
          
        ],
      );
  }
}