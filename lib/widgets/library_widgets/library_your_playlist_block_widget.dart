import 'package:flutter/material.dart';

// -- Widget
import 'package:podkes/widgets/library_widgets/library_your_playlist_widget.dart';

// -- Etension
import 'package:podkes/extensions/screen_size.dart';

class LibraryYourPlaylistBlockWidget extends StatelessWidget {

/// [LibraryYourPlaylistBlockWidget] represents a column of [LibraryYourPlaylistWidget] items, 
/// used to display a set of playlists in the library screen.
  const LibraryYourPlaylistBlockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() * 0.9,
      height: context.getHeight() * 0.333,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xff252836),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your playlist', style: Theme.of(context).textTheme.titleSmall),

          SizedBox(height: 24),

          LibraryYourPlaylistWidget(
            imagePath: 'assets/library_screen/library_screen_images/Plus.png',
            isExistsPlayList: false,
          ),

          SizedBox(height: 24),

          LibraryYourPlaylistWidget(
            playlistName: 'Kumpulan kocakers',
            leftPlaylistDesorption: '4 Channel',
            rightPlaylistDesorption: '20 Playlist',
            imagePath: 'assets/library_screen/library_screen_images/album _art_2.png',
            isExistsPlayList: true,
          ),

          SizedBox(height: 24),

          LibraryYourPlaylistWidget(
            playlistName: 'Membagongkan',
            leftPlaylistDesorption: '4 Channel',
            imagePath:'assets/library_screen/library_screen_images/Album Art (3).png',
            isExistsPlayList: true,
          ),

          //YourPlaylistWidget(imagePath: 'assets/library_screen/library_screen_images/Plus.png', isExistsPlayList: isExistsPlayList)
        ],
      ),
    );
  }
}
