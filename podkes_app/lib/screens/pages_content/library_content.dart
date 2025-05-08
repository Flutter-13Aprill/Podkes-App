import 'package:flutter/material.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';
import 'package:podkes_app/classes/playlist_container.dart';
//library class
class LibraryContent extends StatefulWidget {
  const LibraryContent({super.key});

  @override
  State<LibraryContent> createState() => _LibraryContentState();
}

class _LibraryContentState extends State<LibraryContent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Color.fromARGB(255, 31, 29, 43),
      //the appbar
      appBar: AppBar(centerTitle: true,backgroundColor: Color.fromARGB(255, 31, 29, 43),title: Text('Library',style: TextStyle(color: Colors.white),)
        ),
        //use listview
        body:ListView(
          children: [
            SizedBox(width: context.getwidth(),height: 1,),
             Align(
      alignment: Alignment.centerLeft,
      //the album containers
      child: PlaylistContainer(
        title: 'Played recently',
        imagePath1: 'assets/images/art3.png',
        albumsTitle1: 'Podcast Medoan',
        albumsSubTitle1: 'Today',
        imagePath2: 'assets/images/art2.png',
        albumsTitle2: 'Podcast Antono',
        albumsSubTitle2: 'Yesterday',
        imagePath3: 'assets/images/art3.png',
        albumsTitle3: 'Podcast Medoan',
        albumsSubTitle3: 'Yesterday',
      ),
    ),SizedBox(width: context.getwidth(),height: 8,),Align(
      alignment: Alignment.centerLeft,
      child: PlaylistContainer(
        title: 'Your playlist',
        imagePath1: 'assets/images/Plus.png',
        albumsTitle1: 'Create Playlist',
        albumsSubTitle1: '',
        imagePath2: 'assets/images/album2.png',
        albumsTitle2: 'Kumpulan kocakers',
        albumsSubTitle2: '4 Channel . 20 playlist',
        imagePath3: 'assets/images/album3.png',
        albumsTitle3: 'Membagongkan',
        albumsSubTitle3: 'Yesterday',
      ),
    ),
          ],
        ) ,
      ),
    );
  }
}