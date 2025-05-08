import 'package:flutter/material.dart';

class GettingStartScreen extends StatefulWidget {
  const GettingStartScreen({super.key});

  @override
  State<GettingStartScreen> createState() => _GettingStartScreenState();
}

class _GettingStartScreenState extends State<GettingStartScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Image.asset("images/gettingStart.png", height: 400),
          Text(
            "Podkes",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14),
          Text(
            "A podcast is an episodic series of spoken word ",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            "digital audio files that a user can download to a ",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            "personal device for easy listening.",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
