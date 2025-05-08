import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_app/widgets/Collections/navigation_list.dart';
import 'package:podcast_app/widgets/shimmer_loading.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future loadData() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  int currentNavigationIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => navigationScreens[0])));
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 37, 40, 54),
        onTap: (value) {
          setState(() {
            currentNavigationIndex = value;
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        navigationScreens[currentNavigationIndex])));
          });
        },
        unselectedItemColor: Color.fromARGB(255, 151, 151, 151),
        selectedItemColor: Colors.white,
        currentIndex: currentNavigationIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: "Discover"),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_rounded,
                color: Color.fromARGB(255, 151, 151, 151)),
            label: "Library",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
              ),
              label: "Profile")
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Center(
              child: isLoading
                  ? const ShimmerCircle()
                  : SizedBox(
                      child: Image.asset("assets/images/Ava.png"),
                    )),
          const SizedBox(height: 16),
          const Text(
            "Change Profile",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 37, 40, 54),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(vertical: 32),
            width: 325,
            height: 336,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/Arrow.png",
                    ),
                    title: const Text(
                      "Change Theme",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(18, 255, 255, 255),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/Privacypng.png",
                    ),
                    title: const Text(
                      "Privacy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(18, 255, 255, 255),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/About.png",
                    ),
                    title: const Text(
                      "About",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(18, 255, 255, 255),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                  "Are you sure you want to logout?"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, "No");
                                    },
                                    child: const Text("No")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, "Yes");
                                    },
                                    child: const Text("Yes"))
                              ],
                            ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/icons/Logout.png",
                      ),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
