import 'package:flutter/material.dart';
import 'package:podkes_app/Screen/Author_Music_Screen.dart';
import 'package:shimmer/shimmer.dart';

class ExplorScreen extends StatefulWidget {
  const ExplorScreen({super.key});

  @override
  State<ExplorScreen> createState() => _ExplorScreenState();
}

class _ExplorScreenState extends State<ExplorScreen> {
  final List<String> _tabs = ['All', 'Life', 'Comedy', 'Tech'];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading with delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1A2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1A2B),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 12, height: 2, color: Colors.white),
              SizedBox(height: 4),
              Container(width: 24, height: 2, color: Colors.white),
              SizedBox(height: 4),
              Container(width: 10, height: 2, color: Colors.white),
            ],
          ),
        ),
        title: Text(
          'Podkes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Stack(
              children: [
                Icon(Icons.notifications, color: Colors.white, size: 28),
                Positioned(
                  top: 2,
                  right: 2,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFF2D2B40),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: Colors.white38),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white38),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Category tabs
            SizedBox(
              height: 43,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _tabs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF2D2B40),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      _tabs[index],
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Trending section header
            Text(
              'Trending',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            // Podcast list or loading shimmer
            Expanded(
              child:
                  _isLoading
                      ? GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.72,
                        children: List.generate(4, (_) => _buildShimmerCard()),
                      )
                      : GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.72,
                        children: List.generate(
                          4,
                          (index) => _buildPodcastCard(index),
                        ),
                      ),
            ),
          ],
        ),
      ),
    );
  }

  // Podcast card layout
  Widget _buildPodcastCard(int index) {
    List<String> imagePaths = [
      'assets/Author1.png',
      'assets/Author2.png',
      'assets/Author3.png',
      'assets/Author4.png',
    ];

    List<String> titles = [
      "The missing 96 percent of \n the universe",
      "How Dolly Parton led \n me to an epiphany",
      "The missing 96 percent of \n the universe",
      "Ngobam with Denny\n Caknan",
    ];

    List<String> authors = [
      "Claire Malone",
      "Abumenyang",
      "Tir McDohl",
      "Denny Kulon",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (_) => AuthorMusicScreen(
                      authorName: authors[index],
                      title: titles[index],
                      imagePath: imagePaths[index],
                    ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              imagePaths[index],
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          titles[index],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        Text(
          authors[index],
          style: TextStyle(color: Colors.white60, fontSize: 15),
        ),
      ],
    );
  }

  // Shimmer placeholder while loading
  Widget _buildShimmerCard() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[700]!,
      highlightColor: Colors.grey[500]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          SizedBox(height: 10),
          Container(width: 140, height: 15, color: Colors.grey[800]),
          SizedBox(height: 6),
          Container(width: 100, height: 15, color: Colors.grey[800]),
        ],
      ),
    );
  }
}
