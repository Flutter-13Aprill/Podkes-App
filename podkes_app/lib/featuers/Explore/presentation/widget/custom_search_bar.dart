import 'package:flutter/material.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:shimmer/shimmer.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool loding = true;
  @override
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 53,
            width: 327,
            child: SearchBar(
              trailing: [Icon(Icons.search, color: Colors.grey)],
              hintText: "Search",
              hintStyle: WidgetStateProperty.all(
                TextStyles.inter400.copyWith(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                AppPalette.containersColor,
              ),
              side: WidgetStateProperty.all(
                BorderSide(color: Colors.transparent, width: 4),
              ),
              shadowColor: WidgetStateProperty.all(Colors.transparent),
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 53,
          width: 327,
          child: SearchBar(
            trailing: [Icon(Icons.search, color: Colors.grey)],
            hintText: "Search",
            hintStyle: WidgetStateProperty.all(
              TextStyles.inter400.copyWith(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(
              AppPalette.containersColor,
            ),
            side: WidgetStateProperty.all(
              BorderSide(color: Colors.transparent, width: 4),
            ),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
          ),
        ),
      );
    }
  }
}
