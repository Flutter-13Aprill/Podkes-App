import 'package:assignment9/extensions/get_size.dart';
import 'package:assignment9/widgets/shimmer_user.dart';
import 'package:assignment9/widgets/bottom_bar_handler.dart';

import 'package:flutter/material.dart';

//simple profile for the user
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

bool isShimmer = true;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      isShimmer = false;
      setState(() {});
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
          onPressed: () {
            currentScreen = 1;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomBarHandler()),
            );
            setState(() {});
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Center(
          child: Container(
            margin: EdgeInsets.only(right: 52),
            child: Text('Profile', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 32),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // check if there shimmer
              isShimmer
                  ? ShimmerUser()
                  : Container(
                    width: context.getWidth() * 0.31,
                    height: context.getHeight() * 0.14,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 40, 54),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/project_images/profile_image.png',
                    ),
                  ),

              Text(
                'Change Profile',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(height: 5),
              Container(
                width: context.getWidth() * 0.73,
                height: context.getHeight() * 0.299,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 37, 40, 54),
                ),
                child: Container(
                  //user profile options with alert on logout 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                        child: Row(
                          spacing: 16,
                          children: [
                            Container(
                              width: context.getWidth() * 0.075,
                              height: context.getHeight() * 0.033,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 255, 191, 71),
                              ),
                              child: Image.asset(
                                'assets/project_icons/right_arrow_icon.png',
                              ),
                            ),
                            Text(
                              'Change Theme',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: const Color.fromARGB(73, 255, 255, 255),
                        thickness: 1,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                        child: Row(
                          spacing: 16,
                          children: [
                            Container(
                              width: context.getWidth() * 0.075,
                              height: context.getHeight() * 0.033,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 181, 72, 198),
                              ),
                              child: Image.asset(
                                'assets/project_icons/privacy_icon.png',
                              ),
                            ),
                            Text(
                              'Privacy',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: const Color.fromARGB(73, 255, 255, 255),
                        thickness: 1,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                        child: Row(
                          spacing: 16,
                          children: [
                            Container(
                              width: context.getWidth() * 0.075,
                              height: context.getHeight() * 0.033,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromARGB(255, 50, 167, 226),
                              ),
                              child: Icon(Icons.info, color: Colors.white),
                            ),
                            Text(
                              'Change Theme',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: const Color.fromARGB(73, 255, 255, 255),
                        thickness: 1,
                      ),
                      //alertdialog on logut
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => AlertDialog(
                                  title: Text('We will MISS you =('),
                                  content: Text(
                                    'Are you sure you want to logout and make us cry =\'( ?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Yes'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('No'),
                                    ),
                                  ],
                                ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                          child: Row(
                            spacing: 16,
                            children: [
                              Container(
                                width: context.getWidth() * 0.075,
                                height: context.getHeight() * 0.033,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 236, 79, 60),
                                ),
                                child: Image.asset(
                                  'assets/project_icons/logout_icon.png',
                                ),
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
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
