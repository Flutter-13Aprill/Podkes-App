import 'package:flutter/material.dart';

class CategoryChipWidget extends StatelessWidget {
  const CategoryChipWidget({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(right: 24),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xff2F3142),
        borderRadius: BorderRadius.circular(36)
      ),
      child: Text(
        categoryName,
      ),
    );
  }
}
