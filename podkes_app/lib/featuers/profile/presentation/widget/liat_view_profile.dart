import 'package:flutter/material.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/profile/data/model/profile_model.dart';
import 'package:shimmer/shimmer.dart';

class LiatViewProfile extends StatefulWidget {
  const LiatViewProfile({super.key});

  @override
  State<LiatViewProfile> createState() => _LiatViewProfileState();
}

class _LiatViewProfileState extends State<LiatViewProfile> {
  bool loding = true;
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
        child: ListView.builder(
          itemCount: containerData.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: containerData[index].colorContainer,
                    foregroundColor: Colors.white,
                    child: containerData[index].icon,
                  ),
                  title: Text(
                    containerData[index].title,
                    style: TextStyles.inter400.copyWith(
                      color: AppPalette.whiteColor,
                    ),
                  ),
                ),
                Divider(color: AppPalette.dot),
              ],
            );
          },
        ),
      );
    } else {
      return ListView.builder(
        itemCount: containerData.length,
        itemBuilder: (context, int index) {
          return InkWell(
            onTap: () {
              showDialog;
            },
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: containerData[index].colorContainer,
                    foregroundColor: Colors.white,
                    child: containerData[index].icon,
                  ),
                  title: Text(
                    containerData[index].title,
                    style: TextStyles.inter400.copyWith(
                      color: AppPalette.whiteColor,
                    ),
                  ),
                ),
                Divider(color: AppPalette.dot),
              ],
            ),
          );
        },
      );
    }
  }
}
