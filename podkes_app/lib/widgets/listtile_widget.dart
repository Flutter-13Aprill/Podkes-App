import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
