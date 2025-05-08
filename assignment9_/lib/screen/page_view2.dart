import 'package:flutter/material.dart';

class PageView2 extends StatelessWidget {
  const PageView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 25, 40),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 25, 40),

        toolbarHeight: 90,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Center(
              child: SizedBox(
                height: 317,
                width: 240,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    topLeft: Radius.circular(100),
                  ),
                  child: Image.asset(
                    "assets/images/image2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Podkes",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text(
              "A podcast is an episodic series of spoken word \ndigital audio files that a user can download to a\n            personal device for easy listening.",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 196, 196, 196),
              ),
            ),
          ),
          // SizedBox(height: 100),

          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => BottomNavBar()),
          //     );
          //   },
          //   child: Stack(
          //     children: [
          //       Image.asset("assets/images/image3.png"),
          //       Padding(
          //         padding: const EdgeInsets.only(top: 16, left: 18),
          //         child: Icon(Icons.arrow_forward, size: 32),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
