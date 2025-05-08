import 'package:assignment9/core/text/app_text.dart';
import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/theme/app_palette.dart';
import 'package:assignment9/features/profile/presentation/widget/custom_circle.dart';
import 'package:assignment9/features/profile/presentation/widget/list_view_profile.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.profile),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body:
          isLoading
              ? Shimmer.fromColors(
                baseColor: AppPalette.grayColor,
                highlightColor: AppPalette.containerColor2,
                enabled: true,
                period: Duration(milliseconds: 200),
                child: Column(
                  children: [
                    CustomCircle(),
                    SizedBox(height: 16),
                    Text(AppText.change, style: TextStyles.inter400),
                    SizedBox(height: 50),
                    Center(
                      child: Container(
                        height: 279,
                        width: 350,
                        decoration: BoxDecoration(
                          color: AppPalette.containerColor2,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListViewProfile(),
                      ),
                    ),
                  ],
                ),
              )
              : Column(
                children: [
                  CustomCircle(),
                  SizedBox(height: 16),
                  Text(AppText.change, style: TextStyles.inter400),
                  SizedBox(height: 50),
                  Center(
                    child: Container(
                      height: 279,
                      width: 350,
                      decoration: BoxDecoration(
                        color: AppPalette.containerColor2,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListViewProfile(),
                    ),
                  ),
                ],
              ),
    );
  }
}
