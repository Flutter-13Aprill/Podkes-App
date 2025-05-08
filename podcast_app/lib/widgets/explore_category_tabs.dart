import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  CategoryTab(
      {super.key,
      required this.categoryName,
      required this.categoryWidth,
      required this.categoryIndex,
      required this.selectedIndex});
  final String categoryName;
  final double categoryWidth;
  final int categoryIndex;
  int selectedIndex;
  
  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.categoryWidth,
      height: 36,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 47, 49, 66),
          borderRadius: BorderRadius.circular(36)),
      child: Center(
        child: Text(
          widget.categoryName,
          style: TextStyle(
              color: widget.selectedIndex == widget.categoryIndex
                  ? Colors.white 
                  : const Color.fromARGB(155, 249, 249, 250),
              fontSize: 13),
        ),
      ),
    );
  }
}
