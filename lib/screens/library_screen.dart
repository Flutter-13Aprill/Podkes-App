import 'package:flutter/material.dart';

// -- Widgets
import 'package:podkes/widgets/library_widgets/library_play_recently_block_widget.dart';
import 'package:podkes/widgets/library_widgets/library_your_playlist_block_widget.dart';

// -- Extension
import 'package:podkes/extensions/screen_size.dart';


class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library', style: Theme.of(context).textTheme.titleMedium,),
      ),
      body: SafeArea(
        child: Container(
          width: context.getWidth(),
          height: context.getHeight(),
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
        
              SizedBox(height: 40),
        
              LibraryPlayRecentlyBlockWidget(),
        
              SizedBox(height: 24),
        
              LibraryYourPlaylistBlockWidget()
        
            ],
          ),
        ),
      ),
    );
  }
}