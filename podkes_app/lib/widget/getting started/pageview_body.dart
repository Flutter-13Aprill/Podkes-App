import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageviewBody extends StatelessWidget {
  const PageviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('images/girl.png', width: 240, height: 317),
          SizedBox(height: 40),

          // First Text widget for the title "Podkes"
          Text(
            "Podkes",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),

          // Second Text widget for the description
          Text(
            "A podcast is an episodic series of spoken word\ndigital audio files that a user can download to a\npersonal device for easy listening.",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
