import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// StatefulWidget for the home screen, allowing for dynamic content changes.

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  }); // Constructor for the HomeScreen widget, takes an optional key.

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showImage = false;

  @override // Called only once when the widget is inserted into the widget tree.
  void initState() {
    super.initState();
    // Delays the execution of the following code by 4 seconds.
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        // Checks if the widget is still mounted (part of the widget tree).
        setState(() {
          // Updates the state of the widget, triggering a rebuild.
          _showImage =
              true; // Sets the _showImage variable to true, making the image visible after the delay.
        });
      }
    });
  }

  // Builds the visual representation of the widget based on the current state.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Returns the basic structure of a screen.
      backgroundColor: Color(
        0XFF1F1D2B,
      ), // Sets the background color of the entire screen.
      appBar: AppBar(
        // Defines the app bar at the top of the screen.
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 30),
        ], // An icon representing notifications.
        iconTheme: IconThemeData(
          color: Colors.white,
        ), // Sets the color of the icons within the app bar.
        backgroundColor: Color(
          0XFF1F1D2B,
        ), // Sets the background color of the app bar.
        title: Text(
          "Podkes", // Sets the main title text of the app bar.
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Centers the title within the app bar.
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
      ), // Defines the drawer that can be opened from the side (not fully populated here).
      body: Column(
        // The main content area of the screen, arranged vertically.
        children: [
          // A container holding the search bar with specified margins.
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
            child: SearchBar(
              hintStyle: MaterialStateProperty.all(
                TextStyle(color: Colors.white),
              ), // The text that appears as a hint in the search bar
              hintText: "search",
              // Widgets displayed at the end of the search bar (here, a search icon).
              trailing: const [Icon(Icons.search, color: Colors.white)],
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(
                  255,
                  62,
                  63,
                  69,
                ), // Background color of the search bar.
              ), // Padding around the content within the search bar.
              padding: MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              ), // Defines the shape of the search bar's border.
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
              ), // Defines the border around the search bar.
              side: MaterialStateProperty.all(
                const BorderSide(color: Color(0xff252836), width: 0.0),
              ),
            ),
          ),

          Row(
            // A row to display category buttons horizontally.
            children: [
              // "All" category button.
              Container(
                margin: EdgeInsets.only(left: 16.w, right: 8.w),
                padding: EdgeInsets.all(10.w),
                width: 80.w,
                height: 46.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(99.r),
                ),
                child: Text(
                  "All",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ), // "Life" category button.
              Container(
                margin: EdgeInsets.only(right: 8.w, left: 4.w),
                padding: EdgeInsets.all(10),
                width: 95.w,
                height: 46.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(35.r),
                ),
                child: Text(
                  // "Life" category button.
                  "Life",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 95.w,
                height: 46.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(35.r),
                ),
                child: Text(
                  // Comedy category button.
                  "Comedy",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10.w),
                padding: EdgeInsets.all(10.w),
                width: 95.w,
                height: 46.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 69),
                  borderRadius: BorderRadius.circular(115.r),
                ),
                child: Text(
                  // "Tech" category button.
                  "Tech",
                  style: TextStyle(color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 20.w, bottom: 20.w, top: 25.w),
            alignment: Alignment.topLeft,
            child: Text(
              "Trending", // "Trending" category button.
              style: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // Conditional rendering of the trending image or a shimmer effect while loading.
          _showImage
              ? Container(
                width: 470.w,
                margin: EdgeInsets.only(right: 28.r),
                height: 480.h,
                child: Image.asset("assets/images/5.png", fit: BoxFit.fill),
              ) // If _showImage is false (during loading), display a shimmer effect.
              : Container(
                width: 520.w,
                margin: const EdgeInsets.only(right: 28),
                height: 500.h,
                child: Shimmer.fromColors(
                  // The widget to apply the shimmer effect to (a simple colored container).
                  // Using Shimmer.fromColors
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 520.w,
                    height: 500.h,
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
