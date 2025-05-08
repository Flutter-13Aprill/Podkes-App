import 'package:assignment9_/screen/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 125.0),
              child: Text(
                "Now Playing",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
                  );
                },
                child: Stack(
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 27, 25, 40),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromARGB(255, 27, 25, 40),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            SizedBox(
              height: 290,
              width: 290,

              child: Image.asset(
                "assets/images/image10.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Text(
                "The missing 96 percent of\nthe universe",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text(
                "Claire rfergr",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 174, 174, 202),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 350,

              child: Image.asset(
                "assets/images/image22.png",
                // fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
