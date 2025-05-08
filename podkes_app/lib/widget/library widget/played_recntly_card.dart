import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayedRecntlyCard extends StatelessWidget {
  final String img; // Image file path for the podcast image.
  final Color color; // Background color for the image container.
  final String title; // The title of the podcast or item.
  final String subTitle; // The subtitle or additional information.
  const PlayedRecntlyCard({
    super.key,
    required this.img,
    required this.color,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Row(
        children: [
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Image.asset(img),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                subTitle,
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
