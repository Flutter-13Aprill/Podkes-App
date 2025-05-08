import 'package:assignment9/extensions/get_size.dart';
import 'package:assignment9/widgets/shimmer_explore.dart';
import 'package:assignment9/widgets/trending_container_explore.dart';
import 'package:flutter/material.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

//here where the main home for bottom bar
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}
class _ExploreScreenState extends State<ExploreScreen> {
  int currentTap = 0;
  bool isShimmer = true;

    

  @override
  Widget build(BuildContext context) {

      //give shimmer for 2 seconds
    Future.delayed(Duration(seconds: 2),(){


   isShimmer = false;
      setState(() {
        
      });


    });

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        //here where the drawre holds 4 items
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 31, 29, 43),
          child: ListView(
            children: [
              ListTile(
                title: Text('Quick Access',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.trending_up_outlined, color: const Color.fromARGB(255, 13, 204, 55)),
                title: Text('Top podcasts',style: TextStyle(color: Colors.white),),
              ),
              Divider(color: const Color.fromARGB(103, 255, 255, 255),thickness: 2,),
              ListTile(
                leading: Icon(
                  Icons.live_tv_sharp,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text('Live now',style: TextStyle(color: Colors.white)),
              ),
                Divider(color: const Color.fromARGB(103, 255, 255, 255),thickness: 2,),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
                title: Text('Likes',style: TextStyle(color: Colors.white)),
              ),  Divider(color: const Color.fromARGB(103, 255, 255, 255),thickness: 2,),
              ListTile(
                leading: Icon(
                  Icons.list,
                  color: const Color.fromARGB(255, 196, 194, 201),
                ),
                title: Text('Playlists',style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 31, 29, 43),
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Image.asset('assets/project_icons/drawer_icon.png'),
              );
            },
          ),
          backgroundColor: Color.fromARGB(255, 31, 29, 43),
          title: Center(
            child: Text('Pokdkes', style: TextStyle(color: Colors.white)),
          ),
          actions: [
            Container(
              clipBehavior: Clip.none,
              margin: EdgeInsets.only(right: 10),
              child: Image.asset('assets/project_icons/notification_icon.png'),
            ),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: context.getWidth() * 0.8,
                height: context.getHeight() * 0.05,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 37, 40, 54),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(15, 12, 0, 0),
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                ),
              ),
              SizedBox(height: 15),
              // here is the tabs for catagories
              Container(
                alignment: Alignment.center,
                height: context.getHeight() * 0.038,
                width: context.getWidth() * 0.9,
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 8),
                  isScrollable: true,
                  onTap:
                      (value) => setState(() {
                        currentTap = value;
                      }),
                  unselectedLabelColor: Color.fromARGB(255, 196, 196, 196),
                  labelColor: const Color.fromARGB(255, 249, 249, 250),
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  tabAlignment: TabAlignment.start,
                  //tab1
                  tabs: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 49, 66),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      width:
                          currentTap == 0
                              ? context.getWidth() * 0.138 + 20
                              : context.getWidth() * 0.138,
                      height: context.getHeight() * 0.08,
                      child: Tab(text: 'All'),
                    ),
                    //tab 2
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 49, 66),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      width:
                          currentTap == 1
                              ? context.getWidth() * 0.2 + 20
                              : context.getWidth() * 0.2,
                      height: context.getHeight() * 0.08,
                      child: Tab(text: 'Life'),
                    ),
                    //tab 3
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 49, 66),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      width:
                          currentTap == 2
                              ? context.getWidth() * 0.241 + 20
                              : context.getWidth() * 0.241,
                      height: context.getHeight() * 0.08,
                      child: Tab(text: 'Comedy'),
                    ),
                    //tab 4
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 49, 66),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      width:
                          currentTap == 3
                              ? context.getWidth() * 0.241 + 20
                              : context.getWidth() * 0.241,
                      height: context.getHeight() * 0.08,
                      child: Tab(text: 'Tech'),
                    ),
                  ],
                ),
              ),
              //tab 5
              Container(
                margin: EdgeInsets.only(top: 16),
                width: context.getWidth() * 0.87,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Trending',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 244, 247, 252),
                  ),
                ),
              ),
              //gridview the holds the thumbnails
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: context.getHeight() * 0.8,
                  height: context.getHeight(),
                  child: GridView.count(
                    physics: ScrollPhysics(),
                    childAspectRatio: (0.65),
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: [
                      
                     

                       isShimmer? ShimmerExplore():TrendingContainerExplore(
                        setImage:
                            'assets/project_images/purple_explore_image.png',
                        setTitle: 'The missing 96 percent of the universe',
                        setName: 'Claire Malone',
                      ),
                    isShimmer? ShimmerExplore():  TrendingContainerExplore(
                        setImage:
                            'assets/project_images/blue_explore_image.png',
                        setTitle: 'How Dolly Parton led me to an epiphany',
                        setName: 'Abumenyang',
                      ),
                    isShimmer? ShimmerExplore():  TrendingContainerExplore(
                        setImage:
                            'assets/project_images/orange_explore_image.png',
                        setTitle: 'The missing 96 percent of the universe',
                        setName: 'Tir McDohl',
                      ),
                    isShimmer? ShimmerExplore():  TrendingContainerExplore(
                        setImage:
                            'assets/project_images/yellow_explore_image.png',
                        setTitle: 'Ngobam with Denny Caknan',
                        setName: 'Denny Kulon',
                      ),
                  isShimmer? ShimmerExplore():    TrendingContainerExplore(
                        setImage:
                            'assets/project_images/purple_explore_image.png',
                        setTitle: 'The missing 96 percent of the universe',
                        setName: 'Claire Malone',
                      ),
                   isShimmer? ShimmerExplore():   TrendingContainerExplore(
                        setImage:
                            'assets/project_images/blue_explore_image.png',
                        setTitle: 'How Dolly Parton led me to an epiphany',
                        setName: 'Abumenyang',
                      ),
                   isShimmer? ShimmerExplore():   TrendingContainerExplore(
                        setImage:
                            'assets/project_images/orange_explore_image.png',
                        setTitle: 'The missing 96 percent of the universe',
                        setName: 'Tir McDohl',
                      ),
                  isShimmer? ShimmerExplore():    TrendingContainerExplore(
                        setImage:
                            'assets/project_images/yellow_explore_image.png',
                        setTitle: 'Ngobam with Denny Caknan',
                        setName: 'Denny Kulon',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
