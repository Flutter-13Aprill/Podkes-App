import 'package:assignment9/core/text/app_text.dart';
import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(horizontal: 21, vertical: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      hintText: AppText.search,
      trailing: [Icon(Icons.search, color: AppPalette.whiteColor)],
      hintStyle: WidgetStateProperty.all(TextStyles.inter400),
      backgroundColor: WidgetStateProperty.all(AppPalette.containerColor),
    );
  }
}
