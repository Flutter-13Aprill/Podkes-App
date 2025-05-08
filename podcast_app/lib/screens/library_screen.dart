import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_app/widgets/Collections/navigation_list.dart';
import 'package:podcast_app/widgets/library_list_tile.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  int currentNavigationIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        centerTitle: true,
        title: const Text(
          "Library",
          style:  TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => navigationScreens[0])));
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            )),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 37, 40, 54),
        onTap: (value) {
          setState(() {
            currentNavigationIndex = value;
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        navigationScreens[currentNavigationIndex])));
          });
        },
        unselectedItemColor: const Color.fromARGB(255, 151, 151, 151),
        selectedItemColor: Colors.white,
        currentIndex: currentNavigationIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded), label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Profile")
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 49, 66),
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                width: 325,
                height: 300,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "    Played Recently",
                      style: TextStyle(
                          color:  Color.fromARGB(155, 249, 249, 250)),
                    ),
                    LibraryListTile(
                      podcastTitle: "Podcast Thumaniah",
                      podcastSubtitle: "Today",
                      podcastImage: "assets/images/first_album.png",
                    ),
                    LibraryListTile(
                      podcastTitle: "Podcast Anton",
                      podcastSubtitle: "Today",
                      podcastImage: "assets/images/second_album.png",
                    ),
                    LibraryListTile(
                      podcastTitle: "Podcast Medoan",
                      podcastSubtitle: "Today",
                      podcastImage: "assets/images/third_album.png",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 49, 66),
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                width: 325,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "    Your playlist",
                      style: TextStyle(
                          color:  Color.fromARGB(155, 249, 249, 250)),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/Plus.png",
                      ),
                      title: const Text(
                        "Create Playlist",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const LibraryListTile(
                      podcastTitle: "Business",
                      podcastSubtitle: "Today",
                      podcastImage: "assets/images/second_album.png",
                    ),
                    const LibraryListTile(
                      podcastTitle: "Kumpulan",
                      podcastSubtitle: "4 Channel  |  20 Playlist",
                      podcastImage: "assets/images/third_album.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
