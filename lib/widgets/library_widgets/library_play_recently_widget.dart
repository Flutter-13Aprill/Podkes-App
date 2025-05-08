import 'package:flutter/material.dart';

class LibraryPlayRecentlyWidget extends StatelessWidget {

/// [LibraryPlayRecentlyWidget] displays a recently played podcast item in the library screen.
///
/// It takes the following parameters:
/// - [imagePath]: The path to the podcast's thumbnail image.
/// - [podcastName]: The name of the podcast.
/// - [whenDidYouPlayIt]: A string indicating when the podcast was last played (e.g., "Yesterday").
  const LibraryPlayRecentlyWidget({super.key, required this.imagePath, required this.podcastName,required this.whenDidYouPlayIt,});

  final String imagePath;
  final String podcastName;
  final String whenDidYouPlayIt;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            width: 60,
            height: 60,
           imagePath,
          ),
        ),

        Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              podcastName,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(whenDidYouPlayIt, style: Theme.of(context).textTheme.displaySmall),
          ],
        ),
      ],
    );
  }
}
