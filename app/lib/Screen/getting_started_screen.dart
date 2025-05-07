import 'package:app/Screen/new_play_screen.dart';
import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1F1D2B),
      appBar: AppBar(backgroundColor: Color(0XFF1F1D2B)),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 14),
            width: 300,
            height: 330,
            child: Image.asset("assets/images/7.png", fit: BoxFit.fill),
          ),
          SizedBox(height: 25),
          Align(
            alignment: Alignment(0, .4),
            child: Text(
              "Podkes",
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "A podcast is an episodic series of spoken word",
            style: TextStyle(color: Color(0XFFC4C4C4)),
          ),
          Text(
            "digital audio files that a user can download to a ",
            style: TextStyle(color: Color(0XFFC4C4C4)),
          ),
          Text(
            "personal device for easy listening.",
            style: TextStyle(color: Color(0XFFC4C4C4)),
          ),

          Container(
            margin: EdgeInsets.only(left: 14, top: 40, bottom: 40),
            width: 140,
            height: 6,
            child: Image.asset("assets/images/8.png", fit: BoxFit.fill),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: MaterialButton(
              onPressed: () {
                print("tesssssssssssssssssssssssssss");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPlayScreen()),
                );
              },
              child: Icon(
                Icons.arrow_forward,
                color: Color(0xff525298),
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
