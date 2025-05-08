import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 25, 40),

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 93.0),
          child: Text(
            "Library",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),

        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 27, 25, 40),
      ),

      body: ListView(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 45, 51, 75),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // color: Color.fromARGB(255, 45, 51, 75),
                  height: 333,
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ), //fix right overflow
                    child: Column(
                      children: [
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 140.0),
                          child: Text(
                            "Played recently",
                            style: TextStyle(
                              color: Color.fromARGB(255, 174, 174, 202),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.asset(
                                "assets/images/image7.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10.0,
                                right: 24,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Podcast Medoan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90.0),
                                    child: Text(
                                      "Today",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          174,
                                          174,
                                          202,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Image.asset(
                                "assets/images/image6.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10.0,
                                right: 10,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "    Podcast Medoan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90.0),
                                    child: Text(
                                      "    Today",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          174,
                                          174,
                                          202,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.asset(
                                "assets/images/image7.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10.0,
                                right: 24,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Podcast Medoan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90.0),
                                    child: Text(
                                      "Today",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          174,
                                          174,
                                          202,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 45, 51, 75),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // color: Color.fromARGB(255, 45, 51, 75),
                  height: 333,
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ), //fix right overflow
                    child: Column(
                      children: [
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 170.0),
                          child: Text(
                            "Your playlist",
                            style: TextStyle(
                              color: Color.fromARGB(255, 174, 174, 202),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Image.asset(
                                "assets/images/image12.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 1.0,
                                right: 24,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Create playlist",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Image.asset(
                                "assets/images/image13.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Kumpulan kocakers ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 14.0),
                                    child: Text(
                                      "4 Channel 20 Playlist",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          174,
                                          174,
                                          202,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Image.asset(
                                "assets/images/image14.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Kumpulan kocakers ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 14.0),
                                    child: Text(
                                      "4 Channel 20 Playlist",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          174,
                                          174,
                                          202,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
