import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes_app/screen/Playing_screen.dart';
import 'package:podkes_app/widget/discover/trending/trending2_card.dart';
import 'package:podkes_app/widget/discover/trending/trending_card.dart';
import 'package:redacted/redacted.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({super.key});

  @override
  State<TrendingWidget> createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  bool isLoding = true;

  @override
  void initState() {
    // Simulates a loading delay of 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      isLoding = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trending",
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),

          // Wrap allows items to automatically move to the next line
          Wrap(
            children: [
              // TrendingCard 1 - Navigates to PlayingScreen on tap
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => PlayingScreen(
                            title: "The missing 96 percent\nof the universe",
                            subTitle: "Claire Malone",
                            img: "images/t1.png",
                            color: Color(0xffB548C6),
                          ),
                    ),
                  );
                },
                child: TrendingCard(
                  title: "The missing 96 percent\nof the universe",
                  name: "Claire Malone",
                  img: "images/t1.png",
                  color: Color(0xffB548C6),
                  //loding here
                ).redacted(
                  context: context,
                  redact: isLoding,
                  configuration: RedactedConfiguration(
                    animationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),

              // TrendingCard 2 using a custom Trending2Card
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => PlayingScreen(
                            title: "How Dolly Parton led\nme to an epiphany",
                            subTitle: "Abumenyang",
                            img: "images/t2.png",
                            color: Color(0xff32A7E2),
                          ),
                    ),
                  );
                },
                child: Trending2Card().redacted(
                  context: context,
                  redact: isLoding,
                  configuration: RedactedConfiguration(
                    animationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),

              // TrendingCard 3
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => PlayingScreen(
                            title: "The missing 96 percent\nof the universe",
                            subTitle: "Tir McDohl",
                            img: "images/t3.png",
                            color: Color(0xffEC663C),
                          ),
                    ),
                  );
                },
                child: TrendingCard(
                  title: "The missing 96 percent\nof the universe",
                  name: "Tir McDohl",
                  img: "images/t3.png",
                  color: Color(0xffEC663C),
                ).redacted(
                  context: context,
                  redact: isLoding,
                  configuration: RedactedConfiguration(
                    animationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => PlayingScreen(
                            title: "Ngobam with Denny Caknan",
                            subTitle: "Denny Kulon",
                            img: "images/t4.png",
                            color: Color(0xffFFBF47),
                          ),
                    ),
                  );
                },
                child: TrendingCard(
                  title: "Ngobam with Denny Caknan",
                  name: "Denny Kulon",
                  img: "images/t4.png",
                  color: Color(0xffFFBF47),
                ).redacted(
                  context: context,
                  redact: isLoding,
                  configuration: RedactedConfiguration(
                    animationDuration: const Duration(
                      milliseconds: 800,
                    ), //default
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
