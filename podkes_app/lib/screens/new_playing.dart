import 'package:flutter/material.dart';
import 'library.dart';

class NewPlayPage extends StatefulWidget {
  const NewPlayPage({super.key});

  @override
  _NewPlayPageState createState() => _NewPlayPageState();
}

class _NewPlayPageState extends State<NewPlayPage> {
  bool isPlaying = false;
//When the play or pause button is pressed, the playback state will change.
  void togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }
//When the back button in the AppBar is pressed, it navigates to the Library page.
  void navigateToLibrary() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Library()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252836),
      appBar: AppBar(
        backgroundColor: const Color(0xFF252836),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
          onPressed: navigateToLibrary,
        ),
        title: const Text(
          'Now Playing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 300),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color(0xFFB548C6),
                borderRadius: BorderRadius.circular(11),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: Image.asset(
                  'assets/pic/men2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 260,
            left: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'The missing 96 percent\nof the universe',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Claier Malone',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  //Display the loading percentage in the LinearProgressIndicator.
                  child: LinearProgressIndicator(
                    value: 0.5,
                    color: Colors.white,
                    backgroundColor: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        '24:32',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        '34:00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.replay, color: Colors.white),
                      iconSize: 32,
                      onPressed: () {
                      },
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                        ),
                        iconSize: 40,
                        onPressed: togglePlayPause,
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      icon: const Icon(Icons.forward_10, color: Colors.white),
                      iconSize: 32,
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
