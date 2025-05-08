import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podkes_app/extensions/screens/get_size_screen.dart';
import 'package:podkes_app/screens/onboarding_screens.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEnabled = true;
  @override
  void initState() {
    super.initState();
    // Delay to simulate loading, then disable shimmer effect
    Future.delayed(Duration(seconds: 2), () {
      isEnabled = !isEnabled;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 29, 43, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 29, 43, 1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              // If isEnabled is true show shimmer effect
              isEnabled
                  ? Shimmer.fromColors(
                    enabled: isEnabled,
                    baseColor: Colors.grey.shade600,
                    highlightColor: Colors.grey.shade400,
                    child: Column(
                      spacing: 16,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(radius: 80),
                        ),

                        Card(
                          color: Color.fromRGBO(37, 40, 54, 1),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              spacing: 16,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(),
                                Divider(),
                                ListTile(),
                                Divider(),
                                ListTile(),
                                Divider(),
                                ListTile(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  : // Once isEnabled is false show the actual content
                  Column(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Circle Avatar with profile image
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 80,
                          backgroundColor: Color.fromRGBO(37, 40, 54, 1),
                          backgroundImage: AssetImage(
                            'assets/images/profile_image.png',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change Profile',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Card(
                        color: Color.fromRGBO(37, 40, 54, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            spacing: 16,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Options
                              InkWell(
                                onTap: () {},
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/svg/change_theme.svg',
                                    width: context.getWidth(),
                                    height: context.getHeight() / 25,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Change Theme',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color.fromRGBO(255, 255, 255, 0.06),
                                thickness: 2,
                                height: 1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/svg/privacy.svg',
                                    width: context.getWidth(),
                                    height: context.getHeight() / 25,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Privacy',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color.fromRGBO(255, 255, 255, 0.06),
                                thickness: 2,
                                height: 1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/svg/about.svg',
                                    width: context.getWidth(),
                                    height: context.getHeight() / 25,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'About',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color.fromRGBO(255, 255, 255, 0.06),
                                thickness: 2,
                                height: 1,
                              ),
                              InkWell(
                                onTap: () {
                                  // confirmation dialog
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          'Are you sure you want to log out?',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          OnboardingScreens(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'Logout',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/svg/logout.svg',
                                    width: context.getWidth(),
                                    height: context.getHeight() / 25,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Log',
                                    style: TextStyle(color: Colors.white),
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
