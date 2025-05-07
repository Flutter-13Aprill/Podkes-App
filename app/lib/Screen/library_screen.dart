import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        centerTitle: true,
        backgroundColor: const Color(0XFF1F1D2B),
        title: Text(
          "Library",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      backgroundColor: const Color(0XFF1F1D2B),
      body: Column(
        children: [
          Card(
            color: Color(0XFF252836),
            margin: EdgeInsets.only(left: 60, right: 20, top: 25),
            child: Container(
              alignment: Alignment(0.5, .5),
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(-.9, 0),
                      child: Text(
                        "Played recently",
                        style: TextStyle(color: Color(0XffF5F5FF)),
                      ),
                    ),
                    SizedBox(height: 8),
                    ListTile(
                      subtitle: Text(
                        'Today',
                        style: TextStyle(
                          color: Color.fromARGB(255, 228, 225, 225),
                        ),
                      ),
                      leading: Container(
                        width: 65,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xffEC663C),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          alignment: Alignment(1.3, 0),
                          "assets/images/11.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "Podcast Medoan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    //second
                    SizedBox(height: 10),
                    ListTile(
                      subtitle: Text(
                        'Yesterday',
                        style: TextStyle(
                          color: Color.fromARGB(255, 228, 225, 225),
                        ),
                      ),
                      leading: Container(
                        width: 67,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xff32A7E2),
                          //: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          alignment: Alignment(0, 0),
                          "assets/images/10.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text(
                        "Podcast Antono",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      subtitle: Text(
                        'Yesterday',
                        style: TextStyle(
                          color: Color.fromARGB(255, 228, 225, 225),
                        ),
                      ),
                      leading: Container(
                        width: 65,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xffEC663C),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          alignment: Alignment(1, 0),
                          "assets/images/11.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "Podcast Medoan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment(0.5, .5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  //color: Colors.red,
                ),
            
                width: 435,
            
                height: 365,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        color: Color(0XFF252836),
                        margin: EdgeInsets.only(left: 60, right: 20, top: 25),
                        child: Container(
                          alignment: Alignment(0.5, .5),
                          // width: 370,
                          //height: 310,
                          //decoration: BoxDecoration(
                          //  borderRadius: BorderRadius.circular(16),
                          // ),
                          child: Container(
                            //height: 365,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 20,
                              top: 20,
                              bottom: 30,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                              children: [
                                Text(
                                  "Your playlist",
                                  style: TextStyle(color: Color(0XffF5F5FF),fontSize: 18),
                                ),
                                SizedBox(height: 34),
                                ListTile(
                                  leading: Container(
                                    width: 65,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  title: Text(
                                    "Create Playlist",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                //second
                                SizedBox(height: 25),
                                ListTile(
                                  subtitle: Row(
                                    children: [
                                      const Text(
                                        '4 Channel 20 Playlist ',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            228,
                                            225,
                                            225,
                                          ),
                                          fontSize: 12,
                                        ),
                                      ),
            
                                      Container(
                                        width: 5,
                                        height: 5,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
            
                                      const Text(
                                        ' 20 Playlist',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                            255,
                                            228,
                                            225,
                                            225,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  leading: Container(
                                    width: 67,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xff32A7E2),
                                      //: Colors.red,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.asset(
                                      alignment: Alignment(0, 0),
                                      "assets/images/13.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  title: Text(
                                    "Kumpulan kocakers",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25),
                                ListTile(
                                  subtitle: Text(
                                    'Yesterday',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 228, 225, 225),
                                    ),
                                  ),
                                  leading: Container(
                                    width: 65,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xffEC663C),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.circle,
                                      color: Color(0xffFFF846),
                                      size: 35,
                                    ),
                                  ),
                                  title: Text(
                                    "Membagongkan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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
