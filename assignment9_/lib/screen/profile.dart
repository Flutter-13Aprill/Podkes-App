import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 25, 40),

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 93.0),
          child: Text(
            "Profile",
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
                    borderRadius: BorderRadius.circular(200),
                  ),

                  // color: Color.fromARGB(255, 45, 51, 75),
                  height: 140,
                  width: 140,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ), //fix right overflow
                    child: Image.asset("assets/images/image15.png"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Change Profile",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 20),
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
                  height: 290,
                  width: 310,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ), //fix right overflow
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Image.asset(
                                "assets/images/image17.png",
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
                                    "Change theme",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        // Divider(color: Colors.black,
                        // ),
                        Image.asset("assets/images/image16.png"),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Image.asset(
                                "assets/images/image18.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Privacy ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/images/image16.png"),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Image.asset(
                                "assets/images/image19.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "About ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/images/image16.png"),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Image.asset(
                                "assets/images/image20.png",
                                height: 60,
                                width: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                children: [
                                  InkWell(
                                    child: Text(
                                      "Logout ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onTap: () {
                                      showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: Container(
                                              height: 100,
                                              width: 90,
                                              padding: EdgeInsets.all(8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "                   Logout from app?\n\n\n",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                        child: Text(
                                                          "\n\nLogout",
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
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
