import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  final void Function(int)? onTabChange;
  final int? previousIndex;
  const LibraryScreen({super.key, this.onTabChange, this.previousIndex});

  // A stateless screen that displays the user's recently played podcasts and playlists.
  // It uses a dark-themed UI with custom `AppBar` and back navigation, and is divided into two sections:
  // "Played recently" and "Your playlisty", both using `Card.filled` containers and `ListTile` widgets.
  // The screen also incorporates local image assets and consistent padding for a clean design.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2d),
      appBar: AppBar(
        title: Text(
          "Library",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xffC4C4C4)),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              onTabChange?.call(previousIndex!);
            }
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1f1d2d),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Card.filled(
                    color: Color(0xff252836),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              "Played recently",
                              style: TextStyle(color: Color(0x60F5F5FF)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/album3.png"),
                              ),

                              title: Text(
                                "Podcast Medoan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text("Today"),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/album2.png"),
                              ),

                              title: Text(
                                "Podcast Antono",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text("Yesterday"),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/album3.png"),
                              ),

                              title: Text(
                                "Podcast Medoan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text("Yesterday"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  Card.filled(
                    color: Color(0xff252836),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              "Your playlisty",
                              style: TextStyle(color: Color(0x60F5F5FF)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0x60F5F5FF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Color(0x60F5F5FF),
                                  size: 30,
                                ),
                              ),

                              title: Text(
                                "Create Playlist",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/album5.png"),
                              ),

                              title: Text(
                                "Kumpulan kocakers",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    "4 Channel",
                                    style: TextStyle(color: Color(0x60F5F5FF)),
                                  ),
                                  SizedBox(width: 5),

                                  Container(
                                    height: 4,
                                    width: 4,
                                    decoration: BoxDecoration(
                                      color: Color(0x60F5F5FF),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "20 Playlist",
                                    style: TextStyle(color: Color(0x60F5F5FF)),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/album6.png"),
                              ),

                              title: Text(
                                "Membagongkan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text("Yesterday"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
