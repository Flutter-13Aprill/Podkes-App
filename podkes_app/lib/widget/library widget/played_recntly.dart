import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes_app/widget/library%20widget/played_recntly_card.dart';
import 'package:podkes_app/widget/library%20widget/played_recntly_card2.dart';

class PlayedRecntly extends StatelessWidget {
  const PlayedRecntly({super.key});

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
              "Played recently",
              style: GoogleFonts.inter(
                color: Color.fromRGBO(245, 245, 255, 0.5),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 26),
            PlayedRecntlyCard(
              img: "images/t3.png",
              color: Color(0xffEC663C),
              title: "Podcast Medoan",
              subTitle: "Today",
            ),
            SizedBox(height: 20),
            PlayedRecntlyCard2(),
            SizedBox(height: 20),
            PlayedRecntlyCard(
              img: "images/t3.png",
              color: Color(0xffEC663C),
              title: "Podcast Medoan",
              subTitle: "Today",
            ),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
