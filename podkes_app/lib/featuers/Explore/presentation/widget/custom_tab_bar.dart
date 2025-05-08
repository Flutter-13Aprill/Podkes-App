import 'package:flutter/material.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/Explore/data/model/tab_bar_model.dart';
import 'package:shimmer/shimmer.dart';

class CustomTapBar extends StatefulWidget {
  const CustomTapBar({super.key});

  @override
  State<CustomTapBar> createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar> {
  bool loding = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        loding = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loding == true) {
      return Shimmer.fromColors(
        baseColor: Colors.grey.shade800,
        highlightColor: Colors.grey.shade600,
        period: const Duration(seconds: 2),
        child: DefaultTabController(
          length: tabData.length,
          child: SizedBox(
            width: double.infinity,
            child: TabBar(
              dividerHeight: 0,
              isScrollable: true,
              indicator: BoxDecoration(),
              labelColor: AppPalette.whiteColor,
              unselectedLabelColor: AppPalette.whiteColor,

              tabs:
                  tabData
                      .map(
                        (i) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: AppPalette.containersColor,
                          ),
                          width: 90,
                          height: 50,

                          child: Tab(text: i.title),
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
      );
    } else {
      return DefaultTabController(
        length: tabData.length,
        child: SizedBox(
          width: double.infinity,
          child: TabBar(
            dividerHeight: 0,
            isScrollable: true,
            indicator: BoxDecoration(),
            labelColor: AppPalette.whiteColor,
            unselectedLabelColor: AppPalette.whiteColor,

            tabs:
                tabData
                    .map(
                      (i) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: AppPalette.containersColor,
                        ),
                        width: 90,
                        height: 50,

                        child: Tab(text: i.title),
                      ),
                    )
                    .toList(),
          ),
        ),
      );
    }
  }
}
