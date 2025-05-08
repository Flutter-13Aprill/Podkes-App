import 'package:flutter/material.dart';
import 'package:podkes/screens/claire_malone_screen.dart';
import 'package:podkes/screens/library_screen.dart';
import 'package:podkes/screens/profile_screen.dart';
import 'package:shimmer/shimmer.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate API loading
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 31, 29, 43),
          title: Center(
            child: Text(
              'Podkes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          leading: Image.asset('assets/drawer.png'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset('assets/Notification.png', width: 25),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // 🔷 Search Bar or shimmer
                  isLoading
                      ? shimmerBox(height: 50, width: double.infinity)
                      : buildSearchBar(),

                  const SizedBox(height: 16),

                  // 🔷 Tabs (unchanged, static for now)
                  buildTabBar(),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Trending',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // 🔷 Podcasts Grid
                  isLoading
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                shimmerBox(height: 160, width: 175),
                                shimmerBox(height: 160, width: 175),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                shimmerBox(height: 160, width: 175),
                                shimmerBox(height: 160, width: 175),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                podcastContainer(
                                  context,
                                  'assets/1.png',
                                  'The missing 96 percent\nof the universe',
                                  'Claire Malone',
                                ),
                                podcastContainer(
                                  context,
                                  'assets/2.png',
                                  'How Dolly Parton led\nme to an epiphany',
                                  'Abumenyang',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                podcastContainer(
                                  context,
                                  'assets/3.png',
                                  'The missing 96 percent\nof the universe',
                                  'Tir McDohl',
                                ),
                                podcastContainer(
                                  context,
                                  'assets/4.png',
                                  'Ngobam with Denny\nCaknan',
                                  'Denny Kulon',
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),



                bottomNavigationBar: BottomAppBar(
          
        height: 70,
        color: const Color.fromARGB(255, 37, 40, 54),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          

              InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/exploreWhite.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LibraryScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/library.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/profile.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }

  // 🔧 Reusable shimmer container
  Widget shimmerBox({required double height, required double width}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[700]!,
      highlightColor: Colors.grey[500]!,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  // 🔧 Original search bar
  Widget buildSearchBar() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 37, 40, 43),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: const Color.fromARGB(255, 93, 93, 93),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/Search.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 🔧 TabBar (your original)
  Widget buildTabBar() {
    return TabBar(
      dividerHeight: 0,
      labelPadding: EdgeInsets.symmetric(horizontal: 6),
      isScrollable: true,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      tabs: [
        buildTab('All'),
        buildTab('Life'),
        buildTab('Comedy'),
        buildTab('Tech'),
      ],
    );
  }

  Widget buildTab(String label) {
    return Container(
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 47, 49, 66),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: const Color.fromARGB(255, 171, 171, 171),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


Widget podcastContainer(BuildContext context,String img, String name, String creator,){
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ClaireMaloneScreen()),
      );
    },
    child: Column(
      
      spacing: 8,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(img,width: 175,),
        // you could put text here too if needed
      ],
    ),
        Text(name, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
        Text(creator, style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 179, 179, 179)),),
      ],),
  );
}
