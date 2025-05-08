import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppPalette.backgroundColor,
      centerTitle: true,
      titleTextStyle: TextStyles.poppins70018,
      foregroundColor: AppPalette.whiteColor,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppPalette.containerColor,
      unselectedLabelStyle: TextStyles.inter500,
      selectedLabelStyle: TextStyles.inter500,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        iconSize: 30,
        iconColor: AppPalette.dotColor,
        backgroundColor: AppPalette.whiteColor,
      ),
    ),
  );
}
