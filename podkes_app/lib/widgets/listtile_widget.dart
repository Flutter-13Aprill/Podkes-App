import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// A custom widget that displays a ListTile with an SVG icon and a title.
// The `iconPath` is the location of the SVG file, and the `title` is the text to display next to the icon.
// The `ListTile` widget is wrapped in a `Padding` widget for vertical spacing.

class ListtileWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  const ListtileWidget({
    super.key,
    required this.iconPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: SvgPicture.asset(iconPath),
        title: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
