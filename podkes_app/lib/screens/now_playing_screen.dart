import 'package:flutter/material.dart';
import 'package:podkes_app/widgets/Shimmer_Effect_widgets.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 25, 43),
      appBar: AppBar(
        title: Text(
          'Now Playing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 25, 43),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer_Effect(image: 'images/person1.png'),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'The missing 96 percent\n of the universe ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Claire Malone',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Image.asset("images/wave2.png"),
            ListTile(
              leading: Text(
                "24:34",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              trailing: Text(
                "34:00",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow, color: Colors.white, size: 40),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next, color: Colors.white, size: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
