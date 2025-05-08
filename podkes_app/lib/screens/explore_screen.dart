import 'package:flutter/material.dart';
import 'package:podkes_app/screens/now_playing_screen.dart';
import 'package:podkes_app/widgets/SearchBar_widget.dart';
import 'package:podkes_app/widgets/category_widget.dart';
import 'package:podkes_app/widgets/trending_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 25, 43),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 3, 25, 43),
        title: Text(
          'podkes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.add_alert_rounded, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              SearchbarWidget(),
              SizedBox(height: 20),
              SizedBox(
                width: 500,
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryWidget(category: "ALL"),
                    SizedBox(width: 12),
                    CategoryWidget(category: "life"),
                    SizedBox(width: 12),
                    CategoryWidget(category: "Comedy"),
                    SizedBox(width: 12),
                    CategoryWidget(category: "teching"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 500,
                child: Row(
                  children: [
                    TrendingWidget(
                      imagePath: 'images/person1.png',
                      title1: 'The missing 96 percent ',
                      title2: 'of the universe',
                      author: 'Claire Malone',
                      backgroundColor: const Color.fromARGB(255, 141, 10, 171),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NowPlayingScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 12),
                    TrendingWidget(
                      imagePath: 'images/person2.png',
                      image2: "images/circle.png",
                      title1: 'How Dolly Parton led ',
                      title2: 'me to an epiphany',
                      author: 'Abumenyang',
                      backgroundColor: const Color.fromARGB(255, 64, 142, 211),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: 500,
                child: Row(
                  children: [
                    TrendingWidget(
                      imagePath: 'images/person3.png',
                      title1: 'The missing 96 percent ',
                      title2: 'of the universe',
                      author: 'Tir McDohl',
                      backgroundColor: const Color.fromARGB(255, 255, 98, 31),
                      onTap: () {},
                    ),
                    SizedBox(width: 12),
                    TrendingWidget(
                      imagePath: 'images/person4.png',
                      title1: 'Ngobam with Denny ',
                      title2: 'Caknan',
                      author: 'Denny Kulon',
                      backgroundColor: const Color.fromARGB(255, 207, 161, 23),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
