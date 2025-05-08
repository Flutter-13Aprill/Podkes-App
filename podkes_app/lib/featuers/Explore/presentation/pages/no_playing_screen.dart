import 'package:flutter/material.dart';
import 'package:podkes_app/core/function/navigation.dart';
import 'package:podkes_app/core/text/app_text.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/core/widget/custom_navbar.dart';

class NoPlayingScreen extends StatelessWidget {
  const NoPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.nowPlaying),
        leading: IconButton(
          onPressed: () {
            customReplacmentNaviagte(context, CustomNavbar());
          },
          icon: Icon(Icons.arrow_back),
          color: AppPalette.whiteColor,
          iconSize: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30, width: 30),
          SizedBox(
            height: 300,
            width: 350,
            child: Image.asset(
              "assets/imeges/nowplaynig.png",
              fit: BoxFit.fill,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              AppText.firstTitle,
              style: TextStyles.inter700.copyWith(color: AppPalette.whiteColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text(
              AppText.secondTitle,
              style: TextStyles.inter400.copyWith(
                color: AppPalette.whiteColor,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 30, width: 30),

          SizedBox(
            height: 250,
            width: 400,
            child: Image.asset("assets/imeges/song.png", fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
