import 'package:flutter/material.dart';
import 'package:music/models/music_model.dart';

class DetailsMusicView extends StatelessWidget {
  const DetailsMusicView({super.key, required this.music});
  final MusicModel music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff201D2B),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(width: 21, height: 32, "assets/icons/vector.png"),
        ),
        title: Center(
          child: Text(
            "Now Playing",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        actions: [SizedBox(width: 50)],
      ),
      backgroundColor: const Color(0xff201D2B),
      // todo: reuse  card music
      body: Container(
        margin: EdgeInsets.only(bottom: 90),
        padding: EdgeInsets.all(39),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: music.bgColor,
                image: DecorationImage(
                  // fit: BoxFit.values[4],
                  scale: 0.6,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(music.imageCoverPath),
                ),
              ),
            ),

            Text(
              music.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              music.pulisher,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(204, 204, 204, 1),
              ),
            ),
            SizedBox(height: 32),

            Image.asset("assets/images/musicDetails/musicbar.png"),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "24:32",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  "34:00",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 45),
            Row(
              spacing: 28,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 14,
                  height: 14,
                  "assets/icons/Skip Back.png",
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(47, 49, 66, 1),
                    image: DecorationImage(
                      image: AssetImage("assets/icons/Play.png"),
                    ),
                  ),
                ),
                Image.asset(width: 14, height: 14, "assets/icons/Skip Fwd.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
