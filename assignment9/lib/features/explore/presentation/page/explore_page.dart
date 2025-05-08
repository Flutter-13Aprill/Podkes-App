import 'package:assignment9/core/text/app_text.dart';
import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/features/explore/presentation/widget/custom_grad_view.dart';
import 'package:assignment9/features/explore/presentation/widget/custom_search_bar.dart';
import 'package:assignment9/features/explore/presentation/widget/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("asset/icon/Notification.svg"),
          ),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTabBar(),
              CustomSearchBar(),
              SizedBox(height: 10),
              Text(AppText.trending, style: TextStyles.inter700),
              SizedBox(height: 10),
              CustomGradView(),
            ],
          ),
        ),
      ),
    );
  }
}
