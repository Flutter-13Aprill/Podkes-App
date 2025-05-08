import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayedRecntlyCard2 extends StatelessWidget {
  const PlayedRecntlyCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 220,
      child: Row(
        children: [
          // Container for the image with specific size and background color.
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              color: Color(0xff32A7E2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Stack(
              children: [
                Image.asset("images/yallowBackground.png"),
                Column(
                  children: [
                    SizedBox(height: 12),
                    Image.asset("images/t2.png"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 14),

          // Column containing the title and subtitle.
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                "Podcast Medoan",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Today",
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
