import 'package:flutter/material.dart';
import 'package:podkes_app/Screen/Main_Navigation_Screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1A2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1A2B),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MainNavigationScreen()),
            );
          },
        ),
        title: Text(
          'Library',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recently Played section
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2D2B40),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Played recently',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  _buildRecentItem(
                    'assets/Author3.png',
                    'Podcast Medoan',
                    'Today',
                  ),
                  SizedBox(height: 30),
                  _buildRecentItem(
                    'assets/Author2.png',
                    'Podcast Antono',
                    'Yesterday',
                  ),
                  SizedBox(height: 30),
                  _buildRecentItem(
                    'assets/Author3.png',
                    'Podcast Medoan',
                    'Yesterday',
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Playlist section
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2D2B40),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your playlist',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildPlaylistItem(
                    icon: Icons.add,
                    label: 'Create Playlist',
                    isIcon: true,
                  ),
                  SizedBox(height: 12),
                  _buildPlaylistItem(
                    imagePath: 'assets/music1.png',
                    label: 'Kumpulan kocakers',
                    subtitle: '4 Channel • 20 Playlist',
                  ),
                  SizedBox(height: 12),
                  _buildPlaylistItem(
                    imagePath: 'assets/music2.png',
                    label: 'Membagongkan',
                    subtitle: '6 Playlist',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for recently played item row
  Widget _buildRecentItem(String imagePath, String title, String time) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 4),
            Text(time, style: TextStyle(color: Colors.white54, fontSize: 16)),
          ],
        ),
      ],
    );
  }

  // Widget for playlist item (image or icon)
  Widget _buildPlaylistItem({
    String? imagePath,
    String? label,
    String? subtitle,
    IconData? icon,
    bool isIcon = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: isIcon ? Color(0xFF3A3950) : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                isIcon
                    ? Icon(icon, color: Colors.white, size: 34)
                    : ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(imagePath!, fit: BoxFit.cover),
                    ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label ?? '',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              if (subtitle != null) ...[
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
