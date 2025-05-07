import 'package:flutter/material.dart';

class AuthorMusicScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String authorName;
  const AuthorMusicScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.authorName,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1A2B),
      body: SafeArea(
        child: Column(
          children: [
            // App bar with back button and screen title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Now Playing',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Album cover image
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.purple[400],
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),

            SizedBox(height: 24),

            // Podcast title
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            // Author name
            Text(
              authorName,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            SizedBox(height: 30),

            // Placeholder waveform or audio visualizer
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(
                    Icons.graphic_eq,
                    color: Colors.white60,
                    size: 40,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Audio progress time display
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('24:32', style: TextStyle(color: Colors.white70)),
                  Text('34:00', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Audio control buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.skip_previous, color: Colors.white, size: 36),
                SizedBox(width: 30),
                Icon(Icons.play_circle_fill, color: Colors.white, size: 64),
                SizedBox(width: 30),
                Icon(Icons.skip_next, color: Colors.white, size: 36),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
