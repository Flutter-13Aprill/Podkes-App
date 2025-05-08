import 'package:flutter/material.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/contanier_image.dart';

Widget cardPlaylisWidget(MusicModel music, {canCreate = false}) {
  return ListTile(
    leading: containerImage(
      imageCoverPath: music.imageCoverPath,
      bgColor:  music.bgColor,
      width: 54,
      higth: 54,
      canCreate: canCreate, withScale: false,
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
