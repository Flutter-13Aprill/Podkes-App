import 'package:flutter/material.dart'; // Imports the Flutter Material Design library.
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({
    super.key,
  }); // Constructor for the LibraryScreen widget, passing the key to the parent StatefulWidget.

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    // The build method describes the part of the user interface represented by this widget.
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ), // Leading icon in the AppBar, an arrow back with white color.
        centerTitle: true, // Centers the title in the AppBar.
        backgroundColor: const Color(
          0XFF1F1D2B,
        ), // Sets the background color of the AppBar.
        title: const Text(
          "Library", // The title text of the AppBar.
          style: TextStyle(
            color: Colors.white, // Sets the color of the title text to white.
            fontWeight: FontWeight.bold, // Makes the title text bold.
            fontSize: 18, // Sets the font size of the title text.
          ),
        ),
      ),
      backgroundColor: const Color(
        0XFF1F1D2B,
      ), // Sets the background color of the entire screen.
      body: Column(
        // Arranges its children in a vertical line.
        children: [
          Card(
            color: const Color(
              0XFF252836,
            ), // Sets the background color of the Card.
            margin: EdgeInsets.only(
              left: 35.w,
              right: 20.w,
              top: 25.w,
            ), // Adds margins around the Card.
            child: Container(
              alignment: Alignment(
                0.5,
                .5,
              ), // Aligns the child Container to the center.
              width: 345.w, // Sets a fixed width for the Container.
              height: 350.h, // Sets a fixed height for the Container.
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.r,
                ), // Rounds the corners of the Container.
              ),
              child: Container(
                alignment:
                    Alignment
                        .topLeft, // Aligns the content of this Container to the top-left.
                margin: EdgeInsets.only(
                  left: 20.w,
                  top: 20.w,
                ), // Adds margins inside this Container.
                child: Column(
                  // Arranges its children in a vertical line.
                  children: [
                    const Align(
                      alignment: Alignment(
                        -.9,
                        0,
                      ), // Aligns the Text widget to the left.
                      child: Text(
                        "Played recently", // Text indicating recently played items.
                        style: TextStyle(
                          color: Color(0XffF5F5FF),
                        ), // Sets the color of the text.
                      ),
                    ),
                    SizedBox(height: 8.h), // Adds vertical space.
                    ListTile(
                      subtitle: const Text(
                        'Today', // Subtitle indicating 'Today'.
                        style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            228,
                            225,
                            225,
                          ), // Sets the color of the subtitle text.
                        ),
                      ),
                      leading: Container(
                        width:
                            65.w, // Sets a fixed width for the leading Container.
                        height:
                            110.h, // Sets a fixed height for the leading Container.
                        decoration: BoxDecoration(
                          color: const Color(
                            0xffEC663C,
                          ), // Sets the background color of the leading Container.
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ), // Rounds the corners of the leading Container.
                        ),
                        child: Image.asset(
                          alignment: const Alignment(
                            1.3,
                            0,
                          ), // Aligns the image within the leading Container.
                          "assets/images/11.png", // Path to the image asset.
                          fit:
                              BoxFit
                                  .cover, // Makes the image cover the entire leading Container.
                        ),
                      ),
                      title: Text(
                        "Podcast Medoan", // Title of the podcast.
                        style: TextStyle(
                          color:
                              Colors
                                  .white, // Sets the color of the title text to white.
                          fontWeight:
                              FontWeight.bold, // Makes the title text bold.
                          fontSize:
                              16.sp, // Sets the font size of the title text.
                        ),
                      ),
                    ),
                    //second
                    SizedBox(height: 10.h), // Adds vertical space.
                    ListTile(
                      subtitle: const Text(
                        'Yesterday', // Subtitle indicating 'Yesterday'.
                        style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            228,
                            225,
                            225,
                          ), // Sets the color of the subtitle text.
                        ),
                      ),
                      leading: Container(
                        width:
                            67.w, // Sets a fixed width for the leading Container.
                        height:
                            110.h, // Sets a fixed height for the leading Container.
                        decoration: BoxDecoration(
                          color: const Color(
                            0xff32A7E2,
                          ), // Sets the background color of the leading Container.
                          //: Colors.red,
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ), // Rounds the corners of the leading Container.
                        ),
                        child: Image.asset(
                          alignment: const Alignment(
                            0,
                            0,
                          ), // Aligns the image within the leading Container.
                          "assets/images/10.png", // Path to the image asset.
                          fit:
                              BoxFit
                                  .contain, // Makes the image fit within the leading Container.
                        ),
                      ),
                      title: Text(
                        "Podcast Antono", // Title of the podcast.
                        style: TextStyle(
                          color:
                              Colors
                                  .white, // Sets the color of the title text to white.
                          fontWeight:
                              FontWeight.bold, // Makes the title text bold.
                          fontSize:
                              16.sp, // Sets the font size of the title text.
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h), // Adds vertical space.
                    ListTile(
                      subtitle: Text(
                        'Yesterday', // Subtitle indicating 'Yesterday'.
                        style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            228,
                            225,
                            225,
                          ), // Sets the color of the subtitle text.
                        ),
                      ),
                      leading: Container(
                        width:
                            65.w, // Sets a fixed width for the leading Container.
                        height:
                            110.h, // Sets a fixed height for the leading Container.
                        decoration: BoxDecoration(
                          color: Color(
                            0xffEC663C,
                          ), // Sets the background color of the leading Container.
                          borderRadius: BorderRadius.circular(
                            8,
                          ), // Rounds the corners of the leading Container.
                        ),
                        child: Image.asset(
                          alignment: Alignment(
                            1,
                            0,
                          ), // Aligns the image within the leading Container.
                          "assets/images/11.png", // Path to the image asset.
                          fit:
                              BoxFit
                                  .cover, // Makes the image cover the entire leading Container.
                        ),
                      ),
                      title: Text(
                        "Podcast Medoan", // Title of the podcast.
                        style: TextStyle(
                          color:
                              Colors
                                  .white, // Sets the color of the title text to white.
                          fontWeight:
                              FontWeight.bold, // Makes the title text bold.
                          fontSize:
                              16.sp, // Sets the font size of the title text.
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10.h), // Adds vertical space.

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment(
                  0.5,
                  .5,
                ), // Aligns the child Container to the center.
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.r,
                  ), // Rounds the corners of the Container.
                  //color: Colors.red,
                ),

                width: 410.w,

                height: 365.h,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 30.w,
                  ), // Adds padding at the bottom.
                  child: ListView(
                    shrinkWrap:
                        true, // Allows the ListView to take only the space it needs.
                    children: [
                      Card(
                        color: const Color(
                          0XFF252836,
                        ), // Sets the background color of the Card.
                        margin: EdgeInsets.only(
                          left: 35.w,
                          right: 20.w,
                          top: 20.w,
                        ), // Adds margins around the Card.
                        child: Container(
                          alignment: Alignment(
                            1,
                            .5,
                          ), // Aligns the child Container to the center.

                          child: Container(
                            alignment:
                                Alignment
                                    .topLeft, // Aligns the content of this Container to the top-left.
                            margin: EdgeInsets.only(
                              left: 20.w,
                              top: 20.w,
                              bottom: 30.w,
                            ), // Adds margins inside this Container.
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .start, // Aligns children to the start.
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start, // Aligns children to the start horizontally.

                              children: [
                                Text(
                                  "Your playlist", // Text indicating 'Your playlist'.
                                  style: TextStyle(
                                    color: Color(0XffF5F5FF),
                                  ), // Sets the color and size of the text.
                                ),
                                SizedBox(height: 34.h), // Adds vertical space.
                                ListTile(
                                  leading: Container(
                                    width:
                                        65.w, // Sets a fixed width for the leading Container.
                                    height:
                                        100.h, // Sets a fixed height for the leading Container.
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ), // Adds a white border.
                                      borderRadius: BorderRadius.circular(
                                        4.r,
                                      ), // Rounds the corners.
                                    ),
                                    child: Icon(
                                      Icons.add, // Add icon.
                                      color:
                                          Colors
                                              .white, // Sets the color of the icon.
                                      size: 40.w, // Sets the size of the icon.
                                    ),
                                  ),
                                  title: Text(
                                    "Create Playlist", // Text for creating a playlist.
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .white, // Sets the color of the title text to white.
                                      fontWeight:
                                          FontWeight
                                              .bold, // Makes the title text bold.
                                      fontSize:
                                          16.sp, // Sets the font size of the title text.
                                    ),
                                  ),
                                ),
                                //second
                                SizedBox(height: 25.h), // Adds vertical space.
                                ListTile(
                                  subtitle: Row(
                                    children: [
                                      Text(
                                        '4 Channel 20 Playlist ', // Text indicating the number of channels and playlists.
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            228,
                                            225,
                                            225,
                                          ), // Sets the color of the subtitle text.
                                          fontSize:
                                              12.sp, // Sets the font size of the subtitle text.
                                        ),
                                      ),

                                      Container(
                                        width: 5.w, // Width of the circle.
                                        height: 5.h, // Height of the circle.
                                        decoration: const BoxDecoration(
                                          color:
                                              Colors
                                                  .white, // Color of the circle.
                                          shape:
                                              BoxShape
                                                  .circle, // Makes it a circle.
                                        ),
                                      ),

                                      Text(
                                        ' 20 Playlist', // Text indicating the number of playlists.
                                        style: TextStyle(
                                          fontSize:
                                              12.sp, // Sets the font size.
                                          color: Color.fromARGB(
                                            255,
                                            228,
                                            225,
                                            225,
                                          ), // Sets the color.
                                        ),
                                      ),
                                    ],
                                  ),
                                  leading: Container(
                                    width:
                                        67.w, // Sets a fixed width for the leading Container.
                                    height:
                                        100.h, // Sets a fixed height for the leading Container.
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xff32A7E2,
                                      ), // Sets the background color.
                                      //: Colors.red,
                                      borderRadius: BorderRadius.circular(
                                        8.r,
                                      ), // Rounds the corners.
                                    ),
                                    child: Image.asset(
                                      alignment: Alignment(
                                        0,
                                        0,
                                      ), // Aligns the image.
                                      "assets/images/13.png", // Path to the image.
                                      fit:
                                          BoxFit
                                              .contain, // Makes the image fit.
                                    ),
                                  ),
                                  title: Text(
                                    "Kumpulan kocakers", // Title of the playlist.
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .white, // Sets the color to white.
                                      fontWeight:
                                          FontWeight.bold, // Makes it bold.
                                      fontSize: 16.sp, // Sets the font size.
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24), // Adds vertical space.
                                ListTile(
                                  subtitle: Text(
                                    'Yesterday', // Subtitle indicating 'Yesterday'.
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        228,
                                        225,
                                        225,
                                      ), // Sets the color.
                                    ),
                                  ),
                                  leading: Container(
                                    width: 65.w, // Sets the width.
                                    height: 100.h, // Sets the height.
                                    decoration: BoxDecoration(
                                      color: const Color(
                                        0xffEC663C,
                                      ), // Sets the background color.
                                      borderRadius: BorderRadius.circular(
                                        8.r,
                                      ), // Rounds the corners.
                                    ),
                                    child: Icon(
                                      Icons.circle, // Circle icon.
                                      color: Color(
                                        0xffFFF846,
                                      ), // Sets the color of the icon.
                                      size: 35.sp, // Sets the size of the icon.
                                    ),
                                  ),
                                  title: Text(
                                    "Membagongkan", // Title of the item.
                                    style: TextStyle(
                                      color:
                                          Colors
                                              .white, // Sets the color to white.
                                      fontWeight:
                                          FontWeight.bold, // Makes it bold.
                                      fontSize: 16.sp, // Sets the font size.
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
