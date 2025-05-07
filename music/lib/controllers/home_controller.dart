import 'package:flutter/widgets.dart';
import 'package:music/models/category_model.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/home_widgets/card_music_widget.dart';
import 'package:music/widgets/home_widgets/category_widget.dart';

class HomeController  {
  List<Widget> musicListCard =
      listOfMusic.map((music) => cardMusicWidget(music)).toList();
  List<Widget> listOfCategoryWidgets =
      listOfCategory.map((category) => categoryWidget(category)).toList();
  int currentPageIndex = 0;
}
