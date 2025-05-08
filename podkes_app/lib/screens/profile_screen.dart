import 'package:flutter/material.dart';
import 'package:podkes_app/widgets/bottomNavigation_widget.dart';
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
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 25, 43),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 25, 43),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BottomnavigationWidget()),
            );
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body:
          isLoading
              ? Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[800]!,
                      highlightColor: Colors.grey[600]!,
                      child: CircleAvatar(
                        radius: 90,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 25),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[800]!,
                      highlightColor: Colors.grey[600]!,
                      child: Container(
                        height: 20,
                        width: 120,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              )
              : Column(
                children: [
                  SizedBox(height: 30),
                  Center(
                    child: CircleAvatar(
                      maxRadius: 90,
                      foregroundImage: AssetImage("images/girl.png"),
                      backgroundColor: const Color.fromARGB(255, 4, 38, 67),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Change Profile",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height: 320,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 4, 38, 67),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Image.asset("images/profile1.png"),
                                  SizedBox(width: 15),
                                  Text(
                                    "Change Theme",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Image.asset("images/profile2.png"),
                                  SizedBox(width: 15),
                                  Text(
                                    " Privacy ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Image.asset("images/profile3.png"),
                                  SizedBox(width: 15),
                                  Text(
                                    " About ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        "Are you sure you want to logout app? ",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("cancel"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            Future.delayed(
                                              Duration(milliseconds: 100),
                                              () {
                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                          child: Text("Exit"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Row(
                                children: [
                                  Image.asset("images/profile4.png"),
                                  SizedBox(width: 15),
                                  Text(
                                    " Logout ",
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
    );
  }
}
