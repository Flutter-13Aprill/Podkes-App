import 'package:flutter/material.dart';
import 'package:podkes_app/custome_wedgets/CategoryButton.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';
import 'package:podkes_app/classes/album_item.dart';
import 'package:podkes_app/classes/shimmer.dart';
//discover class
class DiscoverContent extends StatefulWidget {
  const DiscoverContent({super.key});

  @override
  State<DiscoverContent> createState() => _DiscoverContentState();
}

class _DiscoverContentState extends State<DiscoverContent> {
  //is loding for shimmer
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    //make delay for shimmer
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //app bar
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 31, 29, 43),
          leading: Padding(
            padding: EdgeInsets.only(left: context.getwidth() * 0.02),
            //logout dilog
  child: InkWell(
  onTap: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 37, 40, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text(
            'تسجيل الخروج',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'هل أنت متأكد من تسجيل الخروج؟',
            style: TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text('لا', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              
              },
              child: Text('نعم', style: TextStyle(color: Colors.redAccent)),
            ),
          ],
        );
      },
    );
  },
  child: Image.asset('assets/images/dashs.png'),
),

          ),
          title: Text('Podkes', style: TextStyle(color: Colors.white)),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: context.getwidth() * 0.08),
              child: Image.asset('assets/images/Notification.png'),
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 31, 29, 43),
        body: ListView(children: [
          SizedBox(height: 1, width: context.getwidth() - 3),
          //search bar
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 37, 40, 54),
              borderRadius: BorderRadius.circular(20),
            ),
            width: context.getwidth() * 0.85,
            height: context.getheight() * 0.07,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.getwidth() * 0.05),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search_rounded,
                      color: Colors.white,
                      size: context.getwidth() * 0.06),
                ],
              ),
            ),
          ),
          SizedBox(height: context.getheight() * 0.02),
          SizedBox(
            height: context.getheight() * 0.06,
            //categorys buttons
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryButton(label: 'All'),
                CategoryButton(label: 'Life'),
                CategoryButton(label: 'Comedy'),
                CategoryButton(label: 'Tech'),
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: context.getwidth(),
                height: context.getheight() * 0.03),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.getwidth() * 0.07),
              child: Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: context.getwidth() / 10 * 0.99,
                ),
              ),
            ),
            SizedBox(
              height: context.getheight() * 0.55,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.70,
                children: isLoading
                //simmer effect
                    ? List.generate(4, (index) => buildShimmerItem(context))
                    : [
                      //alboums container
                        AlbumItem(
                            imagePath: 'assets/images/art1.png',
                            title: 'The missing 96 percent of the universe',
                            subtitle: 'Claire Malona'),
                        AlbumItem(
                            imagePath: 'assets/images/art2.png',
                            title: 'How Dolly Parton led me to an epiphany',
                            subtitle: 'Abumenyang'),
                        AlbumItem(
                            imagePath: 'assets/images/art3.png',
                            title: 'The missing 96 percent of the universe',
                            subtitle: 'Tir McDohl'),
                        AlbumItem(
                            imagePath: 'assets/images/art4.png',
                            title: 'Ngobam with Denny Caknan',
                            subtitle: 'Denny Kulon'),
                      ],
              ),
            ),
          ])
        ]),
      ),
    );
  }

  
}
