import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_app/screens/now_playing_screen.dart';
import 'package:podcast_app/widgets/Collections/navigation_list.dart';
import 'package:podcast_app/widgets/explore_category_tabs.dart';
import 'package:podcast_app/widgets/podcast_containers.dart';
import 'package:podcast_app/widgets/shimmer_loading.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with TickerProviderStateMixin {
  bool isLoading = false;
  int currentNavigationIndex = 0;
  int selectedTabIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    loadData();
    _tabController = TabController(vsync: this, length: 5);
  }

  Future loadData() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(
        leading: Image.asset("assets/icons/Drawer.png"),
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        centerTitle: true,
        title: Text(
          "Podkes",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset("assets/icons/Notification.png"),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 37, 40, 54),
        onTap: (value) {
          setState(() {
            currentNavigationIndex = value;
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        navigationScreens[currentNavigationIndex])));
          });
        },
        unselectedItemColor: const Color.fromARGB(255, 151, 151, 151),
        selectedItemColor: Colors.white,
        currentIndex: currentNavigationIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded), label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Profile")
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
              child: Center(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 40, 54),
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "     Search",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16, bottom: 16),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 35,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: const Color.fromARGB(0, 31, 29, 43),
                  dividerHeight: 0,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  onTap: (value) {
                    setState(() {
                      selectedTabIndex = value;
                    });
                  },
                  tabs: [
                    CategoryTab(
                        categoryName: "All",
                        categoryWidth: 60,
                        categoryIndex: 0,
                        selectedIndex: selectedTabIndex),
                    CategoryTab(
                        categoryName: "Life",
                        categoryWidth: 85,
                        categoryIndex: 1,
                        selectedIndex: selectedTabIndex),
                    CategoryTab(
                        categoryName: "Comedy",
                        categoryWidth: 85,
                        categoryIndex: 2,
                        selectedIndex: selectedTabIndex),
                    CategoryTab(
                        categoryName: "Tech",
                        categoryWidth: 85,
                        categoryIndex: 3,
                        selectedIndex: selectedTabIndex),
                    CategoryTab(
                      categoryName: "Classic",
                      categoryWidth: 85,
                      categoryIndex: 4,
                      selectedIndex: selectedTabIndex,
                    )
                  ],
                ),
              ),
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Trending",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NowPlayingScreen())));
                  },
                  child: isLoading
                      ? const ShimmerBox()
                      : const PodcastContainer(
                          albumTitle: "The missing 96 percent of the universe",
                          albumAuthor: "Claire Malone",
                          albumImage: "assets/images/first_album.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NowPlayingScreen())));
                  },
                  child: isLoading
                      ? const ShimmerBox()
                      : const PodcastContainer(
                          albumTitle: "How Dolly Parton led me to an epiphany",
                          albumAuthor: "Abumenyang",
                          albumImage: "assets/images/second_album.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NowPlayingScreen())));
                  },
                  child: isLoading
                      ? const ShimmerBox()
                      : const PodcastContainer(
                          albumTitle: "Ngobam with Denny Caknan",
                          albumAuthor: "Denny Kulon",
                          albumImage: "assets/images/third_album.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NowPlayingScreen())));
                  },
                  child: isLoading
                      ? const ShimmerBox()
                      : const PodcastContainer(
                          albumTitle: "The missing 96 percent of the universe",
                          albumAuthor: "Claire Malone",
                          albumImage: "assets/images/first_album.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NowPlayingScreen())));
                  },
                  child: isLoading
                      ? const ShimmerBox()
                      : const PodcastContainer(
                          albumTitle: "How Dolly Parton led me to an epiphany",
                          albumAuthor: "Abumenyang",
                          albumImage: "assets/images/second_album.png"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NowPlayingScreen())));
                  },
                  child: isLoading
                      ? const ShimmerBox()
                      : const PodcastContainer(
                          albumTitle: "Ngobam with Denny Caknan",
                          albumAuthor: "Denny Kulon",
                          albumImage: "assets/images/third_album.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
