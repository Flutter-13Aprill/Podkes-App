import 'package:flutter/material.dart';

// A custom widget that displays a podcast thumbnail, title, and subtitle.
//
// - `image`: The path to the podcast image asset.
// - `title`: The title of the podcast.
// - `subtitle`: The subtitle or description of the podcast, often indicating additional details like date or episode info.
//
// The widget is structured using a `Column` that contains an image, the title, and the subtitle of the podcast.

class PodcastThumbnailWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const PodcastThumbnailWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Image.asset(image),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
