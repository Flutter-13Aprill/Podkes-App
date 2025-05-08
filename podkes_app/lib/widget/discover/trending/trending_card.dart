import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A stateless widget that represents a card for trending content
class TrendingCard extends StatelessWidget {
  final String title;
  final String name;
  final String img;
  final Color color;
  const TrendingCard({
    super.key,
    required this.title,
    required this.name,
    required this.img,
    required this.color,
  });

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
              color: color,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(img),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: GoogleFonts.inter(fontSize: 10, color: Color(0xffCCCCCC)),
          ),
        ],
      ),
    );
  }
}
