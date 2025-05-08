import 'package:flutter/material.dart';

class LibraryYourPlaylistWidget extends StatelessWidget {

/// [LibraryYourPlaylistWidget] displays a custom playlist item in the library view.
///
/// It takes the following parameters:
/// - [imagePath]: The path to the image representing the playlist.
/// - [playlistName]: The name of the playlist (optional).
/// - [rightPlaylistDesorption]: The description shown on the right side (optional).
/// - [leftPlaylistDesorption]: The description shown on the left side (optional).
/// - [isExistsPlayList]: Indicates whether the playlist already exists.
  const LibraryYourPlaylistWidget({super.key, required this.imagePath ,this.playlistName, this.rightPlaylistDesorption, this.leftPlaylistDesorption ,required this.isExistsPlayList});
  
  final String imagePath;
  final String? playlistName;
  final String? rightPlaylistDesorption;
  final String? leftPlaylistDesorption;
  final bool isExistsPlayList;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context){

      if(isExistsPlayList && rightPlaylistDesorption != null){

        return Row(
          spacing: 16,
          children: [

            Image.asset(imagePath),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(playlistName ?? '',style: Theme.of(context).textTheme.labelMedium ),
                Row(
                  spacing: 8,
                  children: [
                    Text(leftPlaylistDesorption ?? '' ,style: Theme.of(context).textTheme.displaySmall,),
                    
                    Container(
                      height: 4,
                      width: 4,
                      color: Color(0xffC4C4C4),
                    ),

                    Text(rightPlaylistDesorption ?? '', style: Theme.of(context).textTheme.displaySmall,)
                  ],
                )
              ],
            )
          ],
        );

      }else if(isExistsPlayList){
        return Row(
          spacing: 16,
          children: [

            Image.asset(imagePath),

            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(playlistName ?? '',style: Theme.of(context).textTheme.labelMedium),
                Text(leftPlaylistDesorption ?? '' ,style: Theme.of(context).textTheme.displaySmall,)
              ],
            )
          ],
        );
      }else{
      
      return Row(
        spacing: 16,
        children: [
          Image.asset(imagePath),
          Text('Create Playlist', style: Theme.of(context).textTheme.labelMedium
            ),
          ],
        );

      }
    });
  }
}