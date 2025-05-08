import 'package:assignment9/core/theme/app_palette.dart';
import 'package:assignment9/features/explore/data/model/tab_bar_model.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBarData.length,
      child: TabBar(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        labelPadding: EdgeInsets.zero,
        labelColor: AppPalette.whiteColor,
        unselectedLabelColor: AppPalette.whiteColor,
        dividerHeight: 0,
        indicator: BoxDecoration(),
        tabs:
            tabBarData
                .map(
                  (data) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      height: 36,
                      width: 85,
                      decoration: BoxDecoration(
                        color: AppPalette.containerColor,
                        borderRadius: BorderRadius.circular(36),
                      ),

                      child: Tab(text: data.title),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
