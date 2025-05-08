import 'package:flutter/material.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/musiclib/data/model/music_library_model.dart';

class ListViewLibrary extends StatelessWidget {
  const ListViewLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: container1Data.length,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            ListTile(
              leading: SizedBox(
                height: 74,
                width: 74,
                child: Image.asset(container1Data[index].image),
              ),
              title: Text(
                container1Data[index].title,
                style: TextStyles.inter700.copyWith(
                  color: AppPalette.whiteColor,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                container1Data[index].subTitle,
                style: TextStyles.inter400.copyWith(
                  color: AppPalette.whiteColor,
                ),
              ),
            ),
            //Divider(color: AppPalette.dot),
          ],
        );
      },
    );
  }
}
