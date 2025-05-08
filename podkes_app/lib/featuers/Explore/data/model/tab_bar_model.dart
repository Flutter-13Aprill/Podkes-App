import 'package:podkes_app/core/text/app_text.dart';

class TabBarModel {
  final String title;

  TabBarModel({required this.title});
}

List<TabBarModel> tabData = [
  TabBarModel(title: AppText.tabLable1),
  TabBarModel(title: AppText.tabLable2),
  TabBarModel(title: AppText.tabLable3),
  TabBarModel(title: AppText.tabLable4),
];
