import 'package:flutter/material.dart';
import 'package:music/models/category_model.dart';

class MusicModel {
  String imageCoverPath;
  String title;
  String pulisher;
  Color bgColor;
  CategoryModel category;
  MusicModel({required this.category,required this.imageCoverPath,required this.pulisher,required this.title,required this.bgColor});
}
// sample of music data
List<MusicModel>listOfMusic=[
  MusicModel(category: listOfCategory[0], imageCoverPath: "assets/images/person/person1.png", pulisher: "Claire Malone", title: "How Dolly Parton led me to an epiphany", bgColor: Color.fromRGBO(181, 72, 198, 1)),
  MusicModel(category: listOfCategory[1], imageCoverPath: "assets/images/person/person2.png", pulisher: "Abumenyang", title: "The missing 96 percent of the universe", bgColor: Color.fromRGBO(50, 167, 226, 1)),
  MusicModel(category: listOfCategory[2], imageCoverPath: "assets/images/person/person3.png", pulisher: "Tir McDohl", title: "The missing 96 percent of the universe", bgColor: Color.fromRGBO(236, 102, 60, 1)),
  MusicModel(category: listOfCategory[0], imageCoverPath: "assets/images/person/person4.png", pulisher: "Denny Kulon", title: "Ngobam with Denny Caknan", bgColor: Color.fromRGBO(255, 191, 71, 1)),
];
