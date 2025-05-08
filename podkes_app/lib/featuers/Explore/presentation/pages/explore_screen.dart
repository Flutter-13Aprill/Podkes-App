import 'package:flutter/material.dart';
import 'package:podkes_app/core/text/app_text.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/theme/app_palette.dart';

import 'package:podkes_app/featuers/Explore/presentation/widget/custom_search_bar.dart';
import 'package:podkes_app/featuers/Explore/presentation/widget/custom_tab_bar.dart';
import 'package:podkes_app/featuers/Explore/presentation/widget/graid_view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.titleExplore),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: AppPalette.whiteColor,
          iconSize: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Image.asset("assets/imeges/Notification.png"),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          CustomTapBar(),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 8, 0, 10),
            child: Text(AppText.personTitle, style: TextStyles.inter700),
          ),
          Flexible(child: CustomGradeView()),
        ],
      ),
    );
  }
}
