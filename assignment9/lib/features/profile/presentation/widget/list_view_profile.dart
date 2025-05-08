import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/theme/app_palette.dart';
import 'package:assignment9/features/profile/data/model/profile_model.dart';
import 'package:assignment9/features/profile/presentation/controller/profile_controller.dart';
import 'package:flutter/material.dart';

class ListViewProfile extends StatelessWidget {
  ListViewProfile({super.key});
  final profileController = ProfileController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profileData.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            profileController.showCustomDialog(context);
          },
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: profileData[index].color,
                  foregroundColor: AppPalette.whiteColor,
                  child: profileData[index].icon,
                ),

                title: Text(
                  profileData[index].title,
                  style: TextStyles.inter400,
                ),
              ),

              Divider(),
            ],
          ),
        );
      },
    );
  }
}
