import 'package:flutter/material.dart';
import 'package:podkes_app/models/albums_content.dart';
import 'package:shimmer/shimmer.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  bool isEnabled = true;
  @override
  void initState() {
    super.initState();
    // Delay to simulate loading, then disable shimmer effect
    Future.delayed(Duration(seconds: 2), () {
      isEnabled = !isEnabled;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 29, 43, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 29, 43, 1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        title: Text(
          'Library',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                // If isEnabled is true show shimmer effect
                isEnabled
                    ? Shimmer.fromColors(
                      enabled: isEnabled,
                      baseColor: Colors.grey.shade600,
                      highlightColor: Colors.grey.shade400,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Card(
                                color: Color.fromRGBO(37, 40, 54, 1),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    spacing: 16,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(''),
                                      ),
                                      ListTile(),
                                      ListTile(),
                                      ListTile(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Card(
                                color: Color.fromRGBO(37, 40, 54, 1),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    spacing: 16,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(''),
                                      ),
                                      ListTile(),
                                      ListTile(),
                                      ListTile(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    : // Once isEnabled is false show the actual content
                    Column(
                      children: [
                        //Played recently
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Card(
                              color: Color.fromRGBO(37, 40, 54, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  spacing: 16,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Played recently',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Image.asset(
                                          albumsInfo[2].imageUrl,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Podcast Medoan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text('Today'),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Image.asset(
                                          albumsInfo[1].imageUrl,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Podcast Antono',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text('Yesterday'),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Image.asset(
                                          albumsInfo[2].imageUrl,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Podcast Medoan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text('Yesterday'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        //Your playlist
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Card(
                              color: Color.fromRGBO(37, 40, 54, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  spacing: 16,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Your playlist',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Image.asset(
                                          'assets/images/Plus.png',
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Create Playlist',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Image.asset(
                                          'assets/images/playlist1.png',
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Kumpulan kocakers',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Row(
                                          spacing: 8,
                                          children: [
                                            Text('4 Channel'),
                                            Container(
                                              height: 5,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                            Text('20 Playlist'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: ListTile(
                                        leading: Image.asset(
                                          'assets/images/playlist2.png',
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Membagongkan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text('Ngopi Sore'),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
