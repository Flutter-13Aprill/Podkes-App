import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A reusable stateless widget for displaying a category chip-style card
class CategoryCard extends StatelessWidget {
  final String title;
  const CategoryCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 29, vertical: 13),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: Color(0xff2F3142),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
