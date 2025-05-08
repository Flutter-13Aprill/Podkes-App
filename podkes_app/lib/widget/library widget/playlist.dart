import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes_app/widget/library%20widget/played_recntly_card.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff252836),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28),
            Text(
              "Your playlist",
              style: GoogleFonts.inter(
                color: Color.fromRGBO(245, 245, 255, 0.5),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 26),
            Row(
              children: [
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffC4C4C4)),
                  ),
                  child: Icon(Icons.add, size: 25, color: Colors.white),
                ),
                SizedBox(width: 15),
                Text(
                  "Create Playlist",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            PlayedRecntlyCard(
              img: "images/playlist1.png",
              color: Color(0xffEC663C),
              title: "Kumpulan kocakers",
              subTitle: "4 Channel • 20 Playlist",
            ),
            SizedBox(height: 20),
            PlayedRecntlyCard(
              img: "images/playlist2.png",
              color: Color(0xff32A7E2),
              title: "Membagongkan",
              subTitle: "4 Channel • 20 Playlist",
            ),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
