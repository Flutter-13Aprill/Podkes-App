import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  }); // Constructor for the ProfileScreen widget, taking an optional key.

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _showImage =
      false; // A boolean flag to control whether to show the actual content or the shimmer effect.

  @override
  void initState() {
    super
        .initState(); // Calls the initState method of the parent StatefulWidget.
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        // Check if the widget is still in the widget tree before calling setState.
        setState(() {
          _showImage = true; //change value to display image
        });
      }
    });
  }

  //method show Alering when user click on logout
  Future<void> showAlering() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          //ِaliert dilog
          contentPadding: EdgeInsets.all(
            10.w,
          ), // Padding around the content of the AlertDialog.
          title: Text("do you want to leave"),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("yes"),
            ), // A button to stay on the profile screen.
            TextButton(
              onPressed: () {
                //button to leave
                Navigator.pop(context); // Dismisses the current AlertDialog.
              },
              child: Text("cancel"),
            ),
          ],
        );
      },
    );
  }

  // Widget to build a single shimmering list item for the loading effect.

  Widget _buildShimmerListItem() {
    return Shimmer.fromColors(
      //return shimmer
      baseColor: Colors.grey[300]!, // The base color of the shimmer effect.
      highlightColor:
          Colors.grey[100]!, // The highlight color of the shimmer effect.
      child: ListTile(
        contentPadding: EdgeInsets.only(
          bottom: 8,
          left: 10,
        ), // Padding within the ListTile.
        leading: Container(
          margin: EdgeInsets.only(
            top: 10.w,
          ), // Margin around the leading widget.
          width: 50.w, // Fixed width  & height for the leading container.
          height: 60.h,
          decoration: BoxDecoration(
            color:
                Colors
                    .grey[300], // Temporary background color for the shimmer leading.
            borderRadius: BorderRadius.circular(20), //cicular container
          ),
        ),
        title: Container(
          //shimmer effect for title
          height: 16.h,
          width: double.infinity,
          color: Colors.grey[300],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1F1D2B), //backgroundColor for page
      appBar: AppBar(
        //app bar
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ), //leading dispaly icon
        centerTitle: true, //title will be center
        backgroundColor: const Color(0XFF1F1D2B), //backgroundColor for AppBar
        title: Text(
          //title of page and style it
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            //Container for display profile
            margin: EdgeInsets.only(
              top: 50.w,
              bottom: 15.w,
            ), //margin the container
            width: 200.w, //fiexd width & height
            height: 200.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle, //makecircle
              color: Color(0xff252836), //color Container
            ),
            child: ClipOval(
              child: Image.asset("assets/images/15.jpg", fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 8.h), //add space
          Align(
            alignment: Alignment(0, 0),
            child: Text(
              "Change Profile", //first title
              style: TextStyle(fontSize: 16.sp, color: Color(0xffFFFFFF)),
            ),
          ),
          SizedBox(height: 24.h), //add space
          Card(
            //card for dispay user info
            child: Container(
              //Container for display profile
              width: 350.w, //fiexd width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r), //make it round
                color: Color(0xff252836), //color it
              ),
              child: Column(
                //Column display the info for user
                children: [
                  !_showImage
                      ? _buildShimmerListItem()
                      : ListTile(
                        contentPadding: EdgeInsets.only(
                          bottom: 8.w,
                          left: 10.w,
                        ),
                        leading: Container(
                          //Container for display icon
                          margin: EdgeInsets.only(top: 10.w), //margin to top
                          width: 50.w, //fiexd width & height
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xffFFBF47), //clolor the container
                            borderRadius: BorderRadius.circular(
                              20.r,
                            ), //make itmore  round
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30.sp,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          "Change Theme", //display title
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  Divider(
                    color: Color.fromARGB(255, 97, 97, 90),
                  ), //Divid the containt
                  !_showImage //if show image false display shiimmer
                      ? _buildShimmerListItem() //shimmer effect
                      : ListTile(
                        contentPadding: EdgeInsets.only(
                          bottom: 8.w,
                          left: 10.w,
                        ),
                        leading: Container(
                          //Container for display image
                          margin: EdgeInsets.only(top: 10),
                          width: 50.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xffB548C6), //color for container
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Icon(
                            //dispaly icon
                            Icons.download_for_offline_rounded,
                            size: 30.sp,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          "Privacy", //display text and style
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  Divider(color: Color.fromARGB(255, 97, 97, 90)),
                  !_showImage //dispay Shimmer effect then iamge
                      ? _buildShimmerListItem()
                      : ListTile(
                        contentPadding: EdgeInsets.only(
                          bottom: 8.w,
                          left: 10.w,
                        ),
                        leading: Container(
                          //Container for display image
                          margin: EdgeInsets.only(top: 10),
                          width: 50.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xff32A7E2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            //icon of errro
                            Icons.error_rounded,
                            size: 30.sp,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          //display title  and style it
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  Divider(color: Color.fromARGB(255, 97, 97, 90)),
                  !_showImage
                      ? _buildShimmerListItem() //
                      : ListTile(
                        onTap: () {
                          showAlering(); // Call the showAlering method when the "Logout" option is tapped.
                        },
                        contentPadding: EdgeInsets.only(
                          bottom: 8.w,
                          left: 10.w,
                        ), //padding for content
                        leading: Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 50.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEC4F3C),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.exit_to_app_rounded, // Logout icon.
                            size: 30.sp,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          "Logout", // Text for the "Logout" option with style .
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
