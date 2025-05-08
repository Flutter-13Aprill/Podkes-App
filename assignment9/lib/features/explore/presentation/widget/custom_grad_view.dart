import 'package:assignment9/core/extension/git_size.dart';
import 'package:assignment9/core/function/navigation.dart';
import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/features/explore/data/model/trending_model.dart';
import 'package:assignment9/features/playing/presentation/page/playing_page.dart';
import 'package:flutter/material.dart';

class CustomGradView extends StatelessWidget {
  const CustomGradView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: trendingData.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            customPush(
              context,
              PlayingPage(
                image: trendingData[index].image,
                description: trendingData[index].description,
                name: trendingData[index].name,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.getHeight() * 0.20,
                  width: double.infinity,
                  child: Image.asset(
                    trendingData[index].image,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  trendingData[index].description,
                  style: TextStyles.inter70013,
                ),
                SizedBox(height: 10),
                Text(trendingData[index].name, style: TextStyles.inter500),
              ],
            ),
          ),
        );
      },
    );
  }
}
