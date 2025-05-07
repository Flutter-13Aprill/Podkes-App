import 'package:flutter/material.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/library_widget/card_playlist_widget.dart';

Widget containerPlaylistWidget({ required bool canCreate}) {
  // List<MusicModel> playList=listOfMusic;
  return Align(
    alignment: Alignment.center,
    child: Container(
      width: 315,
      height: 333,
      margin: EdgeInsets.only(top: 28),
      padding: EdgeInsets.all(17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(37, 40, 54, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 21),
        child: Column(
          spacing: 21,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Played recently",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(245, 245, 255, 1),
                ),
              ),
            ),
            // todo: make leadin reusabal
            SizedBox(
              height: 200,

              child: ListView.builder(
                itemCount: listOfMusic.length,
                itemBuilder: (BuildContext context, index) {
                  if(index==0 && canCreate ){
                    return cardPlaylisWidget(MusicModel(category: listOfMusic[index].category, imageCoverPath:"assets/icons/PlusOutline.png", pulisher: listOfMusic[index].pulisher, title: listOfMusic[index].title, bgColor:  Color.fromRGBO(37, 40, 54, 1)),canCreate: true);
                  }
                  return cardPlaylisWidget(listOfMusic[index]);
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
