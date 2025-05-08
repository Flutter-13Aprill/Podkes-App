import 'package:assignment9/extensions/get_size.dart';
import 'package:assignment9/widgets/likes_card.dart';
import 'package:assignment9/widgets/playlist_card.dart';
import 'package:assignment9/widgets/shimmer_library.dart';
import 'package:assignment9/widgets/bottom_bar_handler.dart';

import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});
  //here where the library displayed
  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}


class _LibraryScreenState extends State<LibraryScreen> {
  bool isShimmer = true;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      isShimmer = false;

      setState(() {});
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
          onPressed: () {
            // back to preivous page which is home
            currentScreen = 0;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomBarHandler()),
            );
            setState(() {});
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Center(
          child: Container(
            margin: EdgeInsets.only(right: 52),
            child: Text('Library', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //check if shimmer is done
                isShimmer
                    ? ShimmerLibrary()
                    //played recently container card
                    : Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 30, 40, 54),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: context.getWidth() * 0.73,
                      height: context.getHeight() * 0.33,

                      child: Container(
                        margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                        child: Column(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Played recently',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 245, 255),
                              ),
                            ),
                            Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.126,
                                  height: context.getHeight() * 0.0567,
                                  child: Image.asset(
                                    'assets/project_images/orange_explore_image.png',
                                  ),
                                ),
                                Column(
                                  spacing: 8,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Podcast Medoan',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          196,
                                          196,
                                          196,
                                        ),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.126,
                                  height: context.getHeight() * 0.0567,
                                  child: Image.asset(
                                    'assets/project_images/blue_explore_image.png',
                                  ),
                                ),
                                Column(
                                  spacing: 8,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Podcast Antono',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Yesterday',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          196,
                                          196,
                                          196,
                                        ),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.126,
                                  height: context.getHeight() * 0.0567,
                                  child: Image.asset(
                                    'assets/project_images/orange_explore_image.png',
                                  ),
                                ),
                                Column(
                                  spacing: 8,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Podcast Medoan',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Yesterday',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          196,
                                          196,
                                          196,
                                        ),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                //PlaylistCard
                isShimmer ? ShimmerLibrary() : PlaylistCard(),

                //LikesCard
                isShimmer ? ShimmerLibrary() : LikesCard(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
