import 'package:assignment9/features/library/data/model/library_model.dart';
import 'package:flutter/material.dart';

class LibraryController {
  //   void checkValue() {
  //     if (libraryData.length == 3) {
  //       return;
  //     }
  //   }

  Widget checkValue(Widget listView) {
    if (libraryData.length == 3) {
      return Container(
        height: 279,
        width: 350,
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A2F),
          borderRadius: BorderRadius.circular(20),
        ),
        child: listView,
      );
    } else {
      return listView;
    }
  }
}
