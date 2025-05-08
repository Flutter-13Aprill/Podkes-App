import 'package:flutter/material.dart';

class LibraryListTile extends StatelessWidget {
  const LibraryListTile(
      {super.key,
      required this.podcastTitle,
      required this.podcastSubtitle,
      required this.podcastImage});
  final String podcastTitle;
  final String podcastSubtitle;
  final String podcastImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        podcastImage,
      ),
      title: Text(
        podcastTitle,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        podcastSubtitle,
        style: const TextStyle(color: Color.fromARGB(155, 249, 249, 250)),
      ),
    );
  }
}
