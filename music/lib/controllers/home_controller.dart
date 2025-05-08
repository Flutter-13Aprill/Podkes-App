import 'package:flutter/widgets.dart';
import 'package:music/models/category_model.dart';

import 'package:music/widgets/home_widgets/category_widget.dart';

class HomeController {
   bool isLoading = true;
   bool isLoadingAvatar = true;
  int currentPageIndex = 0;


  List<Widget> listOfCategoryWidgets =
      listOfCategory.map((category) => categoryWidget(category)).toList();
}
