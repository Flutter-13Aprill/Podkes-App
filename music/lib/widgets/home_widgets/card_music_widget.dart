import 'package:flutter/material.dart';
import 'package:music/controllers/home_controller.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/shimmer_widget/shimmerCardMusicWidget.dart';

//  pass all date [we will take it from music model ]
Widget cardMusicWidget(MusicModel music) {
  return InkWell(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 180,
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: music.bgColor,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(music.imageCoverPath),
          ),
        ),
        Text(
          music.title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4),
        Text(
          music.pulisher,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(204, 204, 204, 1),
          ),
        ),
      ],
    ),
  );
}
