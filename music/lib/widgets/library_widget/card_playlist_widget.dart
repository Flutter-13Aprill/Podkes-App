import 'package:flutter/material.dart';
import 'package:music/models/music_model.dart';

Widget cardPlaylisWidget(MusicModel music,{canCreate=false}) {
  return ListTile(
    leading: Container(
      height: 54,
      width: 54,
      // margin: EdgeInsets.only(bottom: 12),
      // padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: canCreate ? Color.fromRGBO(196, 196, 196, 1) :  music.bgColor ,
          width: 2
        ),
        color:  music.bgColor ,
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage(music.imageCoverPath),
        ),
      ),
    ),
    title: Text(
      music.pulisher,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    subtitle: Text(
      "today",
      style: TextStyle(fontSize: 12, color: Color.fromRGBO(245, 245, 255, 1)),
    ),
  );
}
