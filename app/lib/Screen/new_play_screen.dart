import 'package:app/Screen/bottom_navigation_bar_screen.dart';
import 'package:flutter/material.dart'; // Imports the Flutter material design library.
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPlayScreen extends StatelessWidget {
  const NewPlayScreen({
    super.key,
  }); // Constructor for the NewPlayScreen widget. Passes the key to the StatelessWidget.

  @override
  Widget build(BuildContext context) {
    // The build method describes the part of the user interface represented by this widget.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF1F1D2B),
      ), // Creates an AppBar at the top with a dark background color.
      backgroundColor: Color(
        0XFF1F1D2B,
      ), // Sets the background color of the entire screen to dark.
      body: Container(
        width: 480.w, // Sets a specific width for the Container.
        height: 800.h, // Sets a specific height for the Container.
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigationBarrScreen(),
              ),
            );
          },
          child: Stack(
            // A Stack widget overlays its children.
            children: [
              Positioned(
                top:
                    -70.w, // Positions the child widget 70 pixels above the top of the Stack.
                child: SizedBox(
                  width: 460.w, // Sets the width of the SizedBox.
                  height: 826.h, // Sets the height of the SizedBox.
                  child: Image.asset(
                    "assets/images/2.png",
                    fit: BoxFit.fill,
                  ), // Displays an image from the assets, filling the SizedBox. The negative top positioning likely intends to show a specific part of the image or create an overlapping effect.
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
