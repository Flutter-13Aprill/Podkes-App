import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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

  Future<void> showAlering() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(10),
          title: Text("do you want to leave"),
          actions: [
            TextButton(onPressed: () {}, child: Text("yes")),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("cancel"),
            ),
          ],
        );
      },
    );
  }

  Widget _buildShimmerListItem() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListTile(
        contentPadding: EdgeInsets.only(bottom: 8, left: 10),
        leading: Container(
          margin: EdgeInsets.only(top: 10),
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[300], // لون مؤقت
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        title: Container(
          height: 16,
          width: double.infinity,
          color: Colors.grey[300], // لون مؤقت
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1F1D2B),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0XFF1F1D2B),
        title: Text(
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
            margin: EdgeInsets.only(top: 50, bottom: 15),
            width: 200,
            height: 200,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff252836)),
            child: ClipOval(
              child: Image.asset("assets/images/15.jpg", fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment(0, 0),
            child: Text(
              "Change Profile",
              style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
            ),
          ),
          SizedBox(height: 24),
          Card(
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff252836),
              ),
              child: Column(
                children: [
                  !_showImage
                      ? _buildShimmerListItem()
                      : ListTile(
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 10),
                          leading: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffFFBF47),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "Change Theme",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                  Divider(color: Color.fromARGB(255, 97, 97, 90)),
                  !_showImage
                      ? _buildShimmerListItem()
                      : ListTile(
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 10),
                          leading: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffB548C6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.download_for_offline_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "Privacy",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                  Divider(color: Color.fromARGB(255, 97, 97, 90)),
                  !_showImage
                      ? _buildShimmerListItem()
                      : ListTile(
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 10),
                          leading: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff32A7E2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.error_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "About",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                  Divider(color: Color.fromARGB(255, 97, 97, 90)),
                  !_showImage
                      ? _buildShimmerListItem()
                      : ListTile(
                          onTap: () {
                            showAlering();
                          },
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 10),
                          leading: Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffEC4F3C),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.exit_to_app_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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