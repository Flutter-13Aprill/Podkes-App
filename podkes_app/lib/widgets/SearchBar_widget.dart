import 'package:flutter/material.dart';

class SearchbarWidget extends StatefulWidget {
  const SearchbarWidget({super.key});

  @override
  State<SearchbarWidget> createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      //search icon
      trailing: [const Icon(Icons.search)], 
      hintText: 'Search..', //hint inside search bar
      backgroundColor: WidgetStateProperty.all(
        const Color.fromARGB(141, 0, 0, 0),
      ),
      elevation: WidgetStateProperty.all(0.0), //no shadow
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), //rounded edges
        ),
      ),
    );
  }
}
