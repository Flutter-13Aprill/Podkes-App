import 'package:flutter/material.dart';
import 'package:podkes/screens/explore_screen.dart';
import 'package:podkes/extintions/screens/get_size_screen.dart';
import 'package:podkes/screens/profile_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ), // you can change icon and color
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ExploreScreen()),
            );
          },
        ),
        title: Text(
          'Library',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),

      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    width: context.getWidth() * 1,
                    height: 360,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 40, 54),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Played recently',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 149, 149, 149),
                            ),
                          ),
                          SizedBox(height: 8),
                          playedRcently('assets/3.png', 'Podcast Medoan', 'Today'),
                          playedRcently('assets/2.png', 'Podcast Antono', 'Yesterday'),
                          playedRcently('assets/3.png', 'Podcast Medoan', 'Yesterday'),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 24,),


                  Container(
                    width: context.getWidth() * 1,
                    height: 360,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 40, 54),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your playlist',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 149, 149, 149),
                            ),
                          ),
                          SizedBox(height: 8),
                          playedRcently('assets/pod1.png', 'Create Playlist', ''),
                          playedRcently('assets/pod2.png', 'Kumpulan kocakers', '4 Channel • 20 Playlist'),
                          playedRcently('assets/pod3.png', 'Podcast Medoan', 'Membagongkan'),

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










       bottomNavigationBar: BottomAppBar(
          
        height: 70,
        color: const Color.fromARGB(255, 37, 40, 54),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          

              InkWell(
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExploreScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/explore.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LibraryScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/libraryWhite.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/profile.png'),
                  width: 40,
                  height: 40,
                ),
              ),

            ])
       )));
  }
}



Widget playedRcently(String img, String name, String date) {
  return Row(
    spacing: 8,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          img, // img
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name, // podcast name
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            date, // date 
            style: TextStyle(
              color: Color.fromARGB(255, 149, 149, 149),
              fontSize: 12,
            ),
          ),
        ],
      ),
    ],
  );
}
