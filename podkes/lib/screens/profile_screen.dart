import 'package:flutter/material.dart';
import 'package:podkes/extintions/screens/get_size_screen.dart';
import 'package:podkes/screens/explore_screen.dart';
import 'package:podkes/screens/library_screen.dart';
// import 'package:podkes/extintions/screens/get_size_screen.dart';
// import 'package:podkes/screens/explore_screen.dart';

import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate a delay
    Future.delayed(Duration(seconds: 2), () {
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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            isLoading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey[700]!,
                    highlightColor: Colors.grey[500]!,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[800],
                    ),
                  )
                : CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 37, 40, 54),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/betmoji.png',
                        width: 90,
                        height: 90,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
            const SizedBox(height: 16),
            isLoading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey[700]!,
                    highlightColor: Colors.grey[500]!,
                    child: Container(
                      width: 120,
                      height: 16,
                      color: Colors.grey[800],
                    ),
                  )
                : const Text(
                    'Change Profile',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
            SizedBox(height: 14),
            isLoading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey[700]!,
                    highlightColor: Colors.grey[500]!,
                    child: Container(
                      width: context.getWidth()*0.8,
                      height: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                : Container(
                    width: context.getWidth()*0.8,
                    height: 320,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 40, 54),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        bottons('assets/profile4.png', 'Change Theme'),
                        Divider(color: Colors.grey, thickness: 0.3),
                        bottons('assets/profile3.png', 'Change Theme'),
                        Divider(color: Colors.grey, thickness: 0.3),
                        bottons('assets/profile2.png', 'Change Theme'),
                        Divider(color: Colors.grey, thickness: 0.3),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Confirm Logout"),
                                  content: Text("You can't logout after now"),
                                  actions: [
                                    TextButton(
                                      child: Text("Ok"),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: bottons('assets/profile1.png', 'Log Out'),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),






              bottomNavigationBar: BottomAppBar(
          
        height: 70,
        color: const Color.fromARGB(255, 37, 40, 54),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          

              InkWell(
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExploreScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/explore.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LibraryScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/library.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/profileWhite.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget bottons(String img, String text) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Image.asset(img),
        SizedBox(width: 16),
        Text(text, style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}
