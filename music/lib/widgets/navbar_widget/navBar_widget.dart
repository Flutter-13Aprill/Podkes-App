import 'package:flutter/material.dart';
import 'package:music/controllers/home_controller.dart';
import 'package:music/views/home_view.dart';
import 'package:music/views/library_view.dart';
import 'package:music/views/profile_view.dart';

Widget navBarWidget( HomeController controller, Function refresh,BuildContext context,) {
  void _navigateToView(Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = 0.2;
          const end = 1.0;
          const curve = Curves.bounceInOut;

          final tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

          return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  return BottomNavigationBar(
    backgroundColor: const Color.fromRGBO(32, 29, 43, 1),
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.white,
    currentIndex: controller.currentPageIndex,
    selectedLabelStyle: const TextStyle(color: Colors.white),
    unselectedIconTheme: const IconThemeData(color: Color.fromRGBO(151, 151, 151, 1)),
    onTap: (int index) {
      controller.currentPageIndex = index;
      refresh();

      switch (index) {
        case 0:
          _navigateToView(HomeView());
          break;
        case 1:
          _navigateToView(
            LibraryView(controller: controller, refresh: refresh),
          );
          break;
        case 2:
          _navigateToView(
            ProfileView(controller: controller, refresh: refresh),
          );
          break;
      }
    },
    items: [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Discover',
      ),
      BottomNavigationBarItem(
        activeIcon: Image.asset(
          "assets/icons/library.png",
          color: Colors.white,
        ),
        icon: Image.asset(
          "assets/icons/library.png",
          color: const Color.fromRGBO(151, 151, 151, 1),
        ),
        label: 'Library',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  );
}
