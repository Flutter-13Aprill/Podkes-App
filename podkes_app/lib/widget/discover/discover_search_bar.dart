import 'package:flutter/material.dart';

class DiscoverSearchBar extends StatelessWidget {
  const DiscoverSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: Icon(Icons.search_sharp),
          filled: true,
          fillColor: Color(0xff252836),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
