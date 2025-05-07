import 'package:flutter/material.dart';
import 'new_playing.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, color: Colors.white),
                  const Text(
                    'Podkes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Stack(
                    children: [
                      const Icon(Icons.notifications_none, color: Colors.white),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Search Box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                style: const TextStyle(color: Colors.white, fontSize: 12),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF2D2C3C),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white54, fontSize: 12),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            //Category Scroll
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryBox('All'),
                    _buildCategoryBox('Life', isGray: true),
                    _buildCategoryBox('Comde', isGray: true),
                    _buildCategoryBox('Tech', isGray: true),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            //Trending Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            //Trending Grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                  children: List.generate(4, (index) {
                    final colors = [
                      const Color(0xFFB548C6),
                      const Color(0xFF32A7E2),
                      const Color(0xFFEC663C),
                      const Color(0xFFFFBF47),
                    ];
                    final images = [
                      'assets/pic/men2.png',
                      'assets/pic/men4.png',
                      'assets/pic/men1.png',
                      'assets/pic/men3.png',
                    ];
                    final titles = [
                      'The missing 96 percent of the universe',
                      'How Dolly Parton me to an epiphany',
                      'The missing 96 percent of the universe',
                      'Ngobam with Denny Caknan',
                    ];
                    final subtitles = [
                      'Claire Malone',
                      'Abumenyang',
                      ' Tir McDohi',
                      'Denny Kulon',
                    ];

                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NewPlayPage()),
                          );
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildTrendingBox(colors[index], images[index]),
                          const SizedBox(height: 8),
                          Text(
                            titles[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            subtitles[index],
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1F1D2B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        //It determines which item in the BottomNavigationBar is active.
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryBox(String title, {bool isGray = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF2D2C3C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isGray ? Colors.grey.shade500 : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildTrendingBox(Color color, String imagePath) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 167,
          height: 167,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
