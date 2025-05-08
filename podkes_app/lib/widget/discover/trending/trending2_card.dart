import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trending2Card extends StatelessWidget {
  const Trending2Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: 160,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13),

          Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              color: Color(0xff32A7E2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Stack(
              // Card image container
              children: [
                Center(child: Image.asset("images/yallowBackground.png")),
                Positioned(bottom: 0, child: Image.asset("images/t2.png")),
              ],
            ),
          ),
          SizedBox(height: 10),

          // Podcast title text
          Text(
            "How Dolly Parton led me to an epiphany",
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
          SizedBox(height: 10),

          // Podcast author text
          Text(
            "Abumenyang",
            style: GoogleFonts.inter(fontSize: 10, color: Color(0xffCCCCCC)),
          ),
        ],
      ),
    );
  }
}
