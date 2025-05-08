import 'package:flutter/material.dart';
import 'package:podkes_app/core/text/app_text.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/profile/presentation/widget/custom_avtar.dart';
import 'package:podkes_app/featuers/profile/presentation/widget/liat_view_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.profile),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: AppPalette.whiteColor,
          iconSize: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30, width: 30),
          CustomAvtar(),
          SizedBox(height: 30, width: 30),
          Text(
            AppText.profileCange,
            style: TextStyles.inter400.copyWith(color: AppPalette.whiteColor),
          ),
          SizedBox(height: 30, width: 30),
          Center(
            child: Container(
              width: 315,
              height: 288,

              decoration: BoxDecoration(
                color: AppPalette.containersColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: LiatViewProfile(),
            ),
          ),
        ],
      ),
    );
  }
}
