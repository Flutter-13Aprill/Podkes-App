import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/features/library/data/model/library_model.dart';
import 'package:assignment9/features/library/presentation/controllers/library_controller.dart';
import 'package:flutter/material.dart';

class ListViewLibrary extends StatelessWidget {
  ListViewLibrary({super.key});
  final controller = LibraryController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: libraryData.length,
      itemBuilder: (BuildContext context, int index) {
        return controller.checkValue(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              libraryData[index].type != null
                  ? Text(libraryData[index].type!, style: TextStyles.inter400)
                  : const SizedBox(),
              SizedBox(height: 16),

              ListTile(
                leading: Image.asset(libraryData[index].image),
                title: Text(
                  libraryData[index].podcast,
                  style: TextStyles.inter400,
                ),

                subtitle:
                    libraryData[index].day != null
                        ? Text(
                          libraryData[index].day!,
                          style: TextStyles.inter400,
                        )
                        : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
