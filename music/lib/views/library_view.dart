import 'package:flutter/material.dart';
import 'package:music/controllers/home_controller.dart';

import 'package:music/widgets/library_widget/container_playlist_widget.dart';
import 'package:music/widgets/navbar_widget/navBar_widget.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({
    super.key,
    required this.controller,
    required this.refresh,
  });
  final HomeController controller;
  final Function refresh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201D2B),
      appBar: AppBar(
        backgroundColor: const Color(0xff201D2B),

        leading: IconButton(
          onPressed: () {
            controller.currentPageIndex = 0;
            refresh();
            Navigator.pop(context);
          },
          icon: Image.asset(width: 21, height: 32, "assets/icons/vector.png"),
        ),
        title: Center(
          child: Text(
            "Library",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        actions: [SizedBox(width: 50)],
      ),
      bottomNavigationBar: navBarWidget(controller, refresh, context),

      body: Container(
        width: double.infinity,
        height: 1000,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            containerPlaylistWidget(canCreate: false),
            containerPlaylistWidget(canCreate: true),
          ],
        ),
      ),
    );
  }
}
