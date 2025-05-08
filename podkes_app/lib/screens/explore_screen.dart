import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podkes_app/screens/library_screen.dart';
import 'package:podkes_app/screens/profile_screen.dart';
import 'package:podkes_app/widgets/podcast_thumbnail_widget%20.dart';
import 'package:podkes_app/widgets/sheet_bottom_widget.dart';
import 'package:podkes_app/widgets/shimmer_podcast_thumbnail_widget%20.dart';
import 'package:shimmer/shimmer.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

// ExploreScreen is a main screen in the app that provides a user-friendly interface for discovering trending podcasts.
// It features a custom AppBar with a drawer and notification icon, a horizontal scrollable category filter with a shimmer loading effect,
// The screen uses custom widgets such as `PodcastThumbnailWidget`, `SheetBottomWidget`, and `ShimmerPodcastThumbnailWidget`
// to encapsulate UI logic and maintain clean, reusable code.
// Tapping a podcast opens a modal bottom sheet with more details.
// A simulated loading state is shown for 3 seconds using shimmer placeholders before displaying real content.
// Users can also navigate to Profile and Library screens via the side drawer.
class _ExploreScreenState extends State<ExploreScreen> {
  int clickedIndex = -1;
  bool isLoading = true;
  List<String> category = [
    "All",
    "life",
    "Comedy",
    "Tech",
    "Education",
    "Sports",
    "Music",
  ];

  @override
  void initState() {
    super.initState();

    // Show shimmer for 3 seconds and then stop
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2d),
      drawer: Drawer(
        backgroundColor: Color(0xff1f1d2d),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff1f1d2d)),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Remas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Color(0xffC4C4C4), size: 32),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Color(0xffC4C4C4),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),

            ListTile(
              leading: Icon(
                Icons.playlist_play_rounded,
                color: Color(0xffC4C4C4),
                size: 40,
              ),
              title: Text(
                "Library",
                style: TextStyle(
                  color: Color(0xffC4C4C4),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LibraryScreen()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff1f1d2d),
        title: Text(
          "Podkes",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actionsPadding: EdgeInsets.all(8),

        leading: Builder(
          builder:
              (context) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 8,
                    width: 8,
                  ),
                ),
              ),
        ),
        actions: [SvgPicture.asset("assets/icons/notification.svg")],
        centerTitle: true,
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SearchBar(
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Color(0xff252836)),
                    hintText: "Search",
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(color: Color(0x60ffffff)),
                    ),

                    trailing: [
                      Icon(Icons.search, size: 25, color: Color(0x60ffffff)),
                    ],
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: 550,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      itemBuilder: (context, index) {
                        bool isClicked = index == clickedIndex;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              clickedIndex = index;
                            });
                          },

                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 3,
                              right: 10,
                              top: 8,
                              bottom: 8,
                            ),
                            child:
                                isLoading
                                    ? Shimmer.fromColors(
                                      baseColor: Colors.grey.shade700,
                                      highlightColor: Colors.grey.shade100,
                                      child: Container(
                                        width: 100,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    )
                                    : Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            isClicked
                                                ? Colors.white
                                                : Color(0xff2F3142),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 6.0,
                                          horizontal: 24,
                                        ),
                                        child: Text(
                                          category[index],
                                          style: TextStyle(
                                            color:
                                                isClicked
                                                    ? Color(0xff2F3142)
                                                    : Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return SheetBottomWidget(
                                imagePath: "assets/images/album1.png",
                                personName: "Claire Malone",
                                podcastName:
                                    "The missing 96 percent of the universe",
                              );
                            },
                          );
                        },
                        child:
                            isLoading
                                ? ShimmerPodcastThumbnailWidget()
                                : PodcastThumbnailWidget(
                                  image: "assets/images/album1.png",
                                  title:
                                      "The missing 96 percent of the universe",
                                  subtitle: "Claire Malone",
                                ),
                      ),

                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return SheetBottomWidget(
                                imagePath: "assets/images/album2.png",
                                personName: "Abumenyang",
                                podcastName:
                                    "How Dolly Parton led me to an epiphany",
                              );
                            },
                          );
                        },

                        child:
                            isLoading
                                ? ShimmerPodcastThumbnailWidget()
                                : PodcastThumbnailWidget(
                                  image: "assets/images/album2.png",
                                  title:
                                      "How Dolly Parton led me to an epiphany",
                                  subtitle: "Abumenyang",
                                ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return SheetBottomWidget(
                                imagePath: "assets/images/album3.png",
                                personName: "Tir McDohl",
                                podcastName:
                                    "The missing 96 percent of the universe",
                              );
                            },
                          );
                        },

                        child:
                            isLoading
                                ? ShimmerPodcastThumbnailWidget()
                                : PodcastThumbnailWidget(
                                  image: "assets/images/album3.png",
                                  title:
                                      "The missing 96 percent of the universe",
                                  subtitle: "Tir McDohl",
                                ),
                      ),

                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return SheetBottomWidget(
                                imagePath: "assets/images/album4.png",
                                personName: "Denny Kulon",
                                podcastName: "Ngobam with Denny Caknan",
                              );
                            },
                          );
                        },
                        child:
                            isLoading
                                ? ShimmerPodcastThumbnailWidget()
                                : PodcastThumbnailWidget(
                                  image: "assets/images/album4.png",
                                  title: "Ngobam with Denny Caknan",
                                  subtitle: "Denny Kulon",
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
