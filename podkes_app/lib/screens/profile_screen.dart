import 'package:flutter/material.dart';
import 'package:podkes_app/widgets/listtile_widget.dart';
import 'package:podkes_app/widgets/shimmer_listtile_widget.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  final void Function(int)? onTabChange;
  final int? previousIndex;

  const ProfileScreen({super.key, this.onTabChange, this.previousIndex});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    // Show shimmer for 3 seconds and then stop
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1d2d),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xffC4C4C4)),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              widget.onTabChange?.call(widget.previousIndex!);
            }
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1f1d2d),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isLoading
                    ? Shimmer.fromColors(
                      baseColor: Colors.grey.shade700,
                      highlightColor: Colors.grey.shade100,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff252836),
                        maxRadius: 70,
                        child: Image.asset(
                          "assets/images/avatar.png",
                          height: 100,
                        ),
                      ),
                    )
                    : CircleAvatar(
                      backgroundColor: Color(0xff252836),
                      maxRadius: 70,
                      child: Image.asset(
                        "assets/images/avatar.png",
                        height: 100,
                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:
                      isLoading
                          ? Shimmer.fromColors(
                            baseColor: Colors.grey.shade700,
                            highlightColor: Colors.grey.shade100,

                            child: Container(
                              height: 10,
                              width: 60,
                              color: Colors.grey.shade700,
                            ),
                          )
                          : Text(
                            "Change Profile",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                ),
                SizedBox(height: 24),
                Card.filled(
                  color: Color(0xff252836),
                  child: Column(
                    children: [
                      isLoading
                          ? ShimmerListtileWidget()
                          : ListtileWidget(
                            iconPath: "assets/icons/theme.svg",
                            title: "Change Theme",
                          ),

                      isLoading
                          ? ShimmerListtileWidget()
                          : ListtileWidget(
                            iconPath: "assets/icons/privacy.svg",
                            title: "Privacy",
                          ),

                      isLoading
                          ? ShimmerListtileWidget()
                          : ListtileWidget(
                            iconPath: "assets/icons/about.svg",
                            title: "About",
                          ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    backgroundColor: Color(0xff252836),
                                    title: Text(
                                      "Are you sure you want to log out?",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          },
                          child:
                              isLoading
                                  ? ShimmerListtileWidget()
                                  : ListtileWidget(
                                    iconPath: "assets/icons/logout.svg",
                                    title: "Logout",
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
