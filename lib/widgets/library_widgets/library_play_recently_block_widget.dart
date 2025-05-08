import 'package:flutter/material.dart';

// -- Widget
import 'package:podkes/widgets/library_widgets/library_play_recently_widget.dart';

// - External Package
import 'package:podkes/extensions/screen_size.dart';

class LibraryPlayRecentlyBlockWidget extends StatelessWidget {

  /// [LibraryPlayRecentlyBlockWidget] represents a column of [LibraryPlayRecentlyWidget] items, 
/// used to display a set of playlists in the library screen.
  const LibraryPlayRecentlyBlockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() * 0.9,
      height: context.getHeight() * 0.358,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xff252836),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Played recently',
            style: Theme.of(context).textTheme.displaySmall,
          ),

          SizedBox(height: 32),

          LibraryPlayRecentlyWidget(
            imagePath: 'assets/library_screen/library_screen_images/Album Art.png',
            podcastName: 'Podcast Medoan',
            whenDidYouPlayIt: 'Today',
          ),

          SizedBox(height: 24),

          LibraryPlayRecentlyWidget(
            imagePath:'assets/library_screen/library_screen_images/Group 1033.png',
            podcastName: 'Podcast Antono',
            whenDidYouPlayIt: 'Yesterday',
          ),

          SizedBox(height: 24),

          LibraryPlayRecentlyWidget(
            imagePath:'assets/library_screen/library_screen_images/Album Art.png',
            podcastName: 'Podcast Medoan',
            whenDidYouPlayIt: 'Yesterday',
          ),
        ],
      ),
    );
  }
}
