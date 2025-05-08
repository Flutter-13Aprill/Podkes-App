import 'package:flutter/material.dart';
import 'package:podkes_app/widgets/bottomNavigation_widget.dart';


class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 25, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 25, 43),
        title: Text(
          "Library",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BottomnavigationWidget()),
            );
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 38, 67),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Played recently",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              leading: Image.asset(
                                "images/person3library.png",
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Podcast Medoan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "Today",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              leading: Image.asset(
                                "images/person2library.png",
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Podcast Antono",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "Today",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              leading: Image.asset(
                                "images/person3library.png",
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Podcast Medoan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "Today",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 350,

                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 38, 67),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Your playlist",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              leading: Image.asset(
                                "images/Plus.png",
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Create Playlist",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              leading: Image.asset(
                                "images/library circle1.png",
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Kumpulan kocakers",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "4 Channel . 20 Playlist",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              leading: Image.asset(
                                "images/library circle2.png",
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Membagongkan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "4 Channel . 20 Playlist",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
