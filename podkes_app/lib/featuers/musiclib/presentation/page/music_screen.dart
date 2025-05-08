import 'package:flutter/material.dart';
import 'package:podkes_app/core/function/navigation.dart';
import 'package:podkes_app/core/text/app_text.dart';

import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/Explore/presentation/pages/explore_screen.dart';
import 'package:podkes_app/featuers/musiclib/presentation/widget/list_view_library.dart';
import 'package:podkes_app/featuers/musiclib/presentation/widget/list_view_two.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.Library),
        leading: IconButton(
          onPressed: () {
            customPuch(context, ExploreScreen());
          },
          icon: Icon(Icons.arrow_back),
          color: AppPalette.whiteColor,
          iconSize: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30, width: 30),
            Center(
              child: Container(
                width: 315,
                height: 333,
                decoration: BoxDecoration(
                  color: AppPalette.containersColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListViewLibrary(),
              ),
            ),
            SizedBox(height: 30, width: 30),
            Center(
              child: Container(
                width: 315,
                height: 333,
                decoration: BoxDecoration(
                  color: AppPalette.containersColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListViewTwo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
