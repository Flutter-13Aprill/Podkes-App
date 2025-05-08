import 'package:flutter/material.dart';
import 'package:podkes_app/widget/library%20widget/played_recntly.dart';
import 'package:podkes_app/widget/library%20widget/playlist.dart';

// Stateless widget for the Library screen
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [PlayedRecntly(), SizedBox(height: 20), Playlist()],
    );
  }
}
