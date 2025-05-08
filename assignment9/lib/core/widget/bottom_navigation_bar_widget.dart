import 'package:assignment9/core/text/app_text.dart';
import 'package:assignment9/features/explore/presentation/page/explore_page.dart';
import 'package:assignment9/features/library/presentation/page/library_page.dart';
import 'package:assignment9/features/profile/presentation/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selected = 0;

  void navigationBar(int index) {
    setState(() {
      _selected = index;
    });
  }

  final List<Widget> _pages = [ExplorePage(), LibraryPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: navigationBar,

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/icon/home.svg"),
            label: AppText.discover,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/icon/Library.svg"),
            label: AppText.library,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/icon/User.svg"),
            label: AppText.profile,
          ),
        ],
      ),
    );
  }
}
