import 'package:flutter/material.dart';
import 'package:music/controllers/home_controller.dart';
import 'package:music/views/home_view.dart';
import 'package:music/views/library_view.dart';
import 'package:music/views/profile_view.dart';


navBarWidget(
  HomeController controller,
  Function refresh,
  BuildContext context,
) {
  return BottomNavigationBar(
    backgroundColor: const Color.fromRGBO(32, 29, 43, 1.2),
    unselectedItemColor: Colors.white,
    unselectedIconTheme: IconThemeData(color: Color.fromRGBO(151, 151, 151, 1)),
    selectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(color: Colors.white),
    onTap: (int index) {
      controller.currentPageIndex = index;
      refresh();
      if (index == 0) {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque:
                false,
            pageBuilder:
                (context, animation, secondaryAnimation) => HomeView(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              const begin = 0.2;
              const end = 1.0;
              const curve = Curves.bounceInOut;

              final tween = Tween(
                begin: begin,
                end: end,
              ).chain(CurveTween(curve: curve));

              return FadeTransition(
                opacity: animation.drive(tween),
                child: child,
              );
            },
          ),
        );
      }
      if (index == 1) {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque:
                false,
            pageBuilder:
                (context, animation, secondaryAnimation) =>  LibraryView(controller: controller, refresh: refresh),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              const begin = 0.2;
              const end = 1.0;
              const curve = Curves.bounceInOut;

              final tween = Tween(
                begin: begin,
                end: end,
              ).chain(CurveTween(curve: curve));

              return FadeTransition(
                opacity: animation.drive(tween),
                child: child,
              );
            },
          ),
        );
      }
      if (index == 2) {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque:
                false,
            pageBuilder:
                (context, animation, secondaryAnimation) =>  ProfileView(controller: controller, refresh: refresh),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              const begin = 0.2;
              const end = 1.0;
              const curve = Curves.bounceInOut;

              final tween = Tween(
                begin: begin,
                end: end,
              ).chain(CurveTween(curve: curve));

              return FadeTransition(
                opacity: animation.drive(tween),
                child: child,
              );
            },
          ),
        );
      }
     
    },

    currentIndex: controller.currentPageIndex,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Discover'),

      BottomNavigationBarItem(
        activeIcon: Image.asset(
          "assets/icons/library.png",
          color: Colors.white,
        ),
        icon: Image.asset(
          "assets/icons/library.png",
          color: Color.fromRGBO(151, 151, 151, 1),
        ),
        label: 'Library',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    ],
  );
}
