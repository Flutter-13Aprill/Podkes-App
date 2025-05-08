import 'package:flutter/material.dart';
import 'package:may6th/CustomWidgets/ProfileScreen/profile_options.dart';
import 'package:may6th/data/screen_extension.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: context.screenHeight * 0.02),
            CircleAvatar(
              backgroundColor: Color.fromRGBO(37, 40, 54, 1),
              radius: context.screenWidth * 0.2,
              child: Image.asset(
                'assets/images/profile.png',
                height: context.screenWidth * 0.3,
                width: context.screenWidth * 0.3,
                fit: BoxFit.cover,
              ),
            ),
            Text("Change Profile"),
            SizedBox(height: 20),
            ProfileOptions(),
          ],
        ),
      ),
    );
  }
}
