import 'package:flutter/material.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/contanier_image.dart';

//  pass all date [we will take it from music model ]
Widget cardMusicWidget(MusicModel music) {
  return InkWell(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       containerImage( imageCoverPath: music.imageCoverPath, bgColor: music.bgColor, width: 180, higth: 160, withScale: false),
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
