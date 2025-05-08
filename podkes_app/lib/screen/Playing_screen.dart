import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A stateless widget that displays the "Now Playing" screen
class PlayingScreen extends StatelessWidget {
  // Parameters passed to the screen

  final String title;
  final String subTitle;
  final Color color;
  final String img;
  const PlayingScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2b),

      // App bar with a back button and title
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff1f1d2b),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to the previous screen
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Now Playing",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // Main content area
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 290,
                width: 290,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset(img, height: 160, fit: BoxFit.fill),
              ),
              SizedBox(height: 24),

              // Title text
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),

                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Subtitle text
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  subTitle,
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 32),

              // Playback progress image (custom UI image)
              SizedBox(width: 286, child: Image.asset("images/playing1.png")),
              SizedBox(height: 24),

              // Playback controls (play/pause, next, previous)
              SizedBox(
                width: 286,
                child: Image.asset(
                  "images/playing2.png",
                  width: 286,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 45),

              // Additional controls
              Image.asset("images/playing3.png"),
            ],
          ),
        ),
      ),
    );
  }
}
