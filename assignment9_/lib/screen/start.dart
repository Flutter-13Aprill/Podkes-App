import 'package:assignment9_/screen/now_playing.dart';
import 'package:assignment9_/screen/page_view1.dart';
import 'package:assignment9_/screen/page_view2.dart';
import 'package:assignment9_/screen/page_view3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Start extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 25, 40),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          //page view
          SizedBox(
            height: 650,
            child: PageView(
              controller: _controller,

              children: const [PageView1(), PageView2(), PageView3()],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: Color.fromARGB(255, 123, 128, 133),
              activeDotColor: Color.fromARGB(255, 82, 82, 152),
              dotHeight: 8,
              dotWidth: 10,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NowPlaying()),
              );
            },
            child: Stack(
              children: [
                Image.asset("assets/images/image3.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 18),
                  child: Icon(Icons.arrow_forward, size: 32),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
