import 'package:flutter/material.dart';

// -- Widget
import 'package:podkes/widgets/discover_widgets/discover_category_chip_widget.dart';

// Extensions
import 'package:podkes/extensions/screen_size.dart';

class DiscoverTabBarWidget extends StatelessWidget {
  const DiscoverTabBarWidget({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      height: 45,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        dividerColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        unselectedLabelStyle: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(color: Color(0xff8F8F8F)),
        tabs: [
          CategoryChipWidget(categoryName: 'All'),
          CategoryChipWidget(categoryName: 'Life'),
          CategoryChipWidget(categoryName: 'Comedy'),
          CategoryChipWidget(categoryName: 'Tech'),
        ],
      ),
    );
  }
}
