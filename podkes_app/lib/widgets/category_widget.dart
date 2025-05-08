import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String category;
  const CategoryWidget({super.key, required this.category});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(100, 50),
        backgroundColor: const Color.fromARGB(255, 4, 38, 67),
      ),
      child: Text(widget.category, style: TextStyle(color: Colors.white)),
      onPressed: () {},
    );
  }
}
