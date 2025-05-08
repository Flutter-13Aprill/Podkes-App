import 'package:flutter/material.dart';

// -- External Package
import 'package:flutter_svg/svg.dart';

class DiscoverSearchBarWidget extends StatelessWidget {
  const DiscoverSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: SvgPicture.asset(
          'assets/discover_screen/discover_screen_svgs/Search.svg',
          fit: BoxFit.scaleDown,
        ),
        filled: true,
        fillColor: Color(0xff252836),
        hintText: 'Search',
        hintStyle: Theme.of(context).textTheme.displaySmall,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
