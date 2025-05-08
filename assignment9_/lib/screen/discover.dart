import 'package:assignment9_/screen/library.dart';
import 'package:assignment9_/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 25, 40),

        body: Column(
          children: <Widget>[
            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "Podkes",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 254, 254),

                  borderRadius: BorderRadius.circular(8),
                ),

                child: TextField(
                  decoration: InputDecoration(hintText: "Search"),
                ),
              ),
            ),

            // SizedBox(height: 7),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  ButtonsTabBar(
                    // width: 20,

                    // decoration: BoxDecoration(),
                    backgroundColor: Color.fromARGB(255, 45, 51, 75),
                    unselectedBackgroundColor: Color.fromARGB(255, 45, 51, 75),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: TextStyle(color: Colors.white),
                    // borderWidth: 1,
                    // unselectedBorderColor: Colors.blue,
                    radius: 36,

                    tabs: [
                      const Tab(text: 'All'),
                      const Tab(text: 'Life'),
                      const Tab(text: 'Comedy'),
                      const Tab(text: 'Tech'),
                    ],
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trending',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 20),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 80.0,
                                      ),
                                      child: Image.asset(
                                        // width: 210,
                                        // height: 160,
                                        "assets/images/image10.png",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 95,
                                        top: 20,
                                      ),
                                      child: Text(
                                        "The missing 96 percent \nof the universe",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "Claire Malone",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                            255,
                                            204,
                                            204,
                                            204,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),

                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 90.0,
                                          ),
                                          child: Image.asset(
                                            "assets/images/image10.png",
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 95,
                                            top: 20,
                                          ),
                                          child: Text(
                                            "The missing 96 percent \nof the universe",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "Claire Malone",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                255,
                                                204,
                                                204,
                                                204,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Center(child: Text('life')),
                  const Center(child: Text('comedy')),
                  const Center(child: Text('tech')),
                ],
              ),
            ),
          ],
        ),

        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),

          backgroundColor: Color.fromARGB(255, 27, 25, 40),
          toolbarHeight: 20,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              SizedBox(
                height: 120,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 25, 40),
                  ),

                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              ListTile(
                title: Text("My Profile"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
              ),
              ListTile(
                title: Text("My playlist"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Library()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
