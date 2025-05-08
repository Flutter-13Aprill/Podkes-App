import 'package:flutter/material.dart';

class PodcastContainer extends StatelessWidget {
  const PodcastContainer(
      {super.key,
      required this.albumTitle,
      required this.albumAuthor,
      required this.albumImage});
  final String albumTitle;
  final String albumAuthor;
  final String albumImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(albumImage, fit: BoxFit.fill),
          const SizedBox(height: 8),
          Text(
            albumTitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            albumAuthor,
            style: const TextStyle(
                color: Color.fromARGB(255, 204, 204, 204),
                fontSize: 10,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
