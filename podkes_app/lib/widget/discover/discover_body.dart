import 'package:flutter/material.dart';
import 'package:podkes_app/widget/discover/category/category_container.dart';
import 'package:podkes_app/widget/discover/discover_search_bar.dart';
import 'package:podkes_app/widget/discover/trending/trending_widget.dart';

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 10),
          DiscoverSearchBar(),
          SizedBox(height: 16),
          CategoryContainer(),
          SizedBox(height: 16),

          TrendingWidget(),
        ],
      ),
    );
  }
}
