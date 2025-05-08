import 'package:flutter/widgets.dart';
import 'package:music/models/category_model.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/home_widgets/card_music_widget.dart';

import 'package:music/widgets/home_widgets/category_widget.dart';
import 'package:music/widgets/shimmer_widget/shimmerCardMusicWidget.dart';

class HomeController {
  bool isLoading = true;
  bool isLoadingAvatar = true;
  int currentPageIndex = 0;

  List<Widget> listOfCategoryWidgets =
      listOfCategory.map((category) => categoryWidget(category)).toList();
      shimmerOrCard(int index){
      return  isLoading? shimmerCardMusicWidget(): cardMusicWidget(listOfMusic[index]);
      }
}
