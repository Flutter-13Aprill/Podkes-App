import 'package:app/Screen/new_play_screen.dart'; // Imports the screen to navigate to after getting started.
import 'package:flutter/material.dart'; // Imports the Flutter material design library.
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({
    super.key,
  }); // Constructor for the GettingStartedScreen widget. The 'super.key' passes the key up to the StatelessWidget.

  @override
  Widget build(BuildContext context) {
    // The build method describes the part of the user interface represented by this widget.
    return Scaffold(
      backgroundColor: Color(
        0XFF1F1D2B,
      ), // Sets the background color of the entire screen.
      appBar: AppBar(
        backgroundColor: Color(0XFF1F1D2B),
      ), // Creates an AppBar at the top with a matching background color.
      body: Column(
        // Uses a Column to arrange its children vertically.
        // mainAxisAlignment: MainAxisAlignment.center, // Uncomment to center children vertically.
        crossAxisAlignment:
            CrossAxisAlignment
                .center, // Centers the children horizontally within the Column.
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 14.sp,
            ), // Adds left margin to the Container.
            width: 300.w, // Sets the width of the Container.
            height: 330.h, // Sets the height of the Container.
            child: Image.asset(
              "assets/images/7.png",
              fit: BoxFit.fill,
            ), // Displays an image from the assets, filling the Container.
          ),
          SizedBox(
            height: 25.h,
          ), // Adds vertical spacing between the image and the text.
          Align(
            alignment: Alignment(
              0,
              .4,
            ), // Aligns the child (Text) within its parent. (0, 0) is center, positive values move it down and right.
            child: Text(
              "Podkes", // The main title of the screen.
              style: TextStyle(
                fontSize: 38.sp, // Sets the font size.
                color: Colors.white, // Sets the text color to white.
                fontWeight: FontWeight.bold, // Makes the text bold.
              ),
            ),
          ),
          Text(
            "A podcast is an episodic series of spoken word\ndigital audio files that a user can download to a\npersonal device for easy listening.",

            style: TextStyle(
              color: Color(0XFFC4C4C4),
            ), // Sets the text color to a light gray.
          ),
          Container(
            margin: EdgeInsets.only(
              left: 14.h,
              top: 40.h,
              bottom: 40.h,
            ), // Adds margins around the image.
            width: 140.w, // Sets the width of the Container.
            height: 6.h, // Sets the height of the Container.
            child: Image.asset(
              "assets/images/8.png",
              fit: BoxFit.fill,
            ), // Displays another image as an indicator.
          ),
          SizedBox(height: 79,),
          Container(
            width: 81.w, // Sets the width of the circular button.
            height: 100.h, // Sets the height of the circular button.
            decoration: BoxDecoration(
              color:
                  Colors
                      .white, // Sets the background color of the button to white.
              borderRadius: BorderRadius.circular(
                24.sp,
              ), // Rounds the corners to create a circular shape.
            ),
            child: MaterialButton(
              onPressed: () {
                // Function that is executed when the button is pressed.
                
                Navigator.push(
                  context, // The current build context.
                  MaterialPageRoute(
                    builder: (context) => NewPlayScreen(),
                  ), // Navigates to the NewPlayScreen.
                );
              },
              child: Icon(
                Icons.arrow_forward, // The forward arrow icon.
                color: Color(0xff525298), // Sets the color of the icon.
                size: 50.sp, // Sets the size of the icon.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
