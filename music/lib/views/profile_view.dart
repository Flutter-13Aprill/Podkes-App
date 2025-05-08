import 'package:flutter/material.dart';
import 'package:music/controllers/home_controller.dart';
import 'package:music/widgets/navbar_widget/navBar_widget.dart';
import 'package:music/widgets/profile_widgets/card_profile_widget.dart';
import 'package:music/widgets/profile_widgets/showLogoutDialog_widget.dart';
import 'package:music/widgets/shimmer_widget/shimmer_avatar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key,
    required this.controller,
    required this.refresh,
  });
  final HomeController controller;
  final Function refresh;
  
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      widget.controller.isLoadingAvatar=false;
      setState(() {
        
      });;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201D2B),
      appBar: AppBar(
        backgroundColor: const Color(0xff201D2B),

        leading: IconButton(
          onPressed: () {
            widget.controller.currentPageIndex = 0;
            widget.refresh();
            Navigator.pop(context);
          },
          icon: Image.asset(width: 21, height: 32, "assets/icons/vector.png"),
        ),
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        actions: [SizedBox(width: 50)],
      ),
      bottomNavigationBar: navBarWidget(widget.controller, widget.refresh, context),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),

           widget.controller.isLoadingAvatar? shimmerAvatarWidget() : CircleAvatar(
              minRadius: 80,

              backgroundColor: Color.fromRGBO(37, 40, 54, 1),
              child: Image.asset("assets/images/avatar/ava.png"),
            ),
            SizedBox(height: 15),
            Text(
              "Change Profile",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Container(
              width: 360,
              height: 333,
              margin: EdgeInsets.only(top: 28),
              padding: EdgeInsets.only(top: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(37, 40, 54, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardProfileWidget(
                    bgColor: Color.fromRGBO(255, 191, 71, 1),
                    iconPath: 'assets/icons/Arrow - Right.png',
                    text: 'Change Theme',
                  ),
                  cardProfileWidget(
                    bgColor: Color.fromRGBO(181, 72, 198, 1),
                    iconPath: 'assets/icons/Download.png',
                    text: 'Privacy',
                  ),
                  cardProfileWidget(
                    bgColor: Color.fromRGBO(50, 167, 226, 1),
                    iconPath: 'assets/icons/Info Circle.png',
                    text: 'About',
                  ),
                  InkWell(
                    onTap: () {
                      showLogoutDialog(context);
                    },
                    child: cardProfileWidget(
                      bgColor: Color.fromRGBO(236, 79, 60, 1),
                      iconPath: 'assets/icons/Logout.png',
                      text: 'Logout',
                      whitDivider: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
