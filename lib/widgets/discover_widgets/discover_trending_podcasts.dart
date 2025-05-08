import 'package:flutter/material.dart';

// -- Screen
import 'package:podkes/screens/playing_screen.dart';
import 'package:podkes/widgets/discover_widgets/discover_shimmer_podcast_thumbnail.dart';

// -- Widget
import 'package:podkes/widgets/discover_widgets/discover_trending_podcast.dart';

// -- Extension
import 'package:podkes/extensions/screen_size.dart';

// -- Controller (Dummy Data)
import 'package:podkes/controllers/get_dummy_data_trending_products.dart';

class DiscoverTrendingPodcasts extends StatefulWidget {
  
  /// [DiscoverTrendingPodcasts] represents the trending podcasts, displayed using a [GridView.builder].
  const DiscoverTrendingPodcasts({super.key});

  @override
  State<DiscoverTrendingPodcasts> createState() => _DiscoverTrendingPodcastsState();
}

class _DiscoverTrendingPodcastsState extends State<DiscoverTrendingPodcasts> {
  final listsOfTrendingProducts = getDummyDataTrendingProducts();
  /// This variable is used to simulate the loading state of the component.
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: context.getHeight() * 0.016,
        crossAxisSpacing: context.getWidth() * 0.05,
        childAspectRatio: 0.60,
      ),
      itemBuilder: (context, index) {

        // Simulates the loading state of the component.
        if(isLoading){
          
          Future.delayed(Duration(seconds: 1),(){
             setState(() {
               isLoading = false;
             });
          });

          return DiscoverShimmerPodcastThumbnail();
        }
        return InkWell(
          child: DiscoverTrendingPodcast(product: listsOfTrendingProducts[index]),
          onTap:() => Navigator.push(context, MaterialPageRoute(builder:(context) => PlayingScreen(
            podcastTitle:listsOfTrendingProducts[index].podcastName,
            podcastAuthor: listsOfTrendingProducts[index].author,
            imagePath: listsOfTrendingProducts[index].imagePath,
            ),), ),
        );
      },
    );
  }
}
