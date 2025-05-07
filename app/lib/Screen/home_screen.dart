import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showImage = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() {
          _showImage = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1F1D2B),
      appBar: AppBar(
        actions: const [
          // Spacer(), // قم بإزالة هذا
          Icon(Icons.notifications),
          SizedBox(width: 30.0),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0XFF1F1D2B),
        title: const Text(
          "Podkes",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // قم بتعيين هذه الخاصية إلى true لتوسيط العنوان
      ),
      drawer: Drawer(backgroundColor: Colors.white),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
            child: SearchBar(
              hintStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white),
              ),
              hintText: "search",
              trailing: const [Icon(Icons.search, color: Colors.white)],
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 62, 63, 69),
              ),
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ),
              side: MaterialStateProperty.all(
                const BorderSide(color: Color(0xff252836), width: 0.0),
              ),
            ),
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.all(10),
                width: 80,
                height: 46,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Text(
                  "All",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8, left: 8),
                padding: EdgeInsets.all(10),
                width: 120,
                height: 46,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Text(
                  "Life",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 120,
                height: 46,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Text(
                  "Comedy",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(10),
                width: 120,
                height: 46,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(115),
                ),
                child: Text(
                  "Tech",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20, top: 25),
            alignment: Alignment.topLeft,
            child: Text(
              "Trending",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          _showImage
              ? Container(
                width: 470,
                margin: EdgeInsets.only(right: 28),
                height: 480,
                child: Image.asset("assets/images/5.png", fit: BoxFit.fill),
              )
              : Container(
                width: 520,
                margin: const EdgeInsets.only(right: 28),
                height: 500,
                child: Shimmer.fromColors(
                  // Using Shimmer.fromColors
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 520,
                    height: 500,
                    color:
                        Colors
                            .grey[300], // The base color as the solid placeholder
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
