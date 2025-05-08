import 'package:flutter/material.dart';
import 'package:music/controllers/home_controller.dart';
import 'package:music/models/music_model.dart';
import 'package:music/widgets/shimmer_widget/shimmerCardMusicWidget.dart';
import 'package:music/views/details_music_view.dart';
import 'package:music/widgets/home_widgets/card_music_widget.dart';
import 'package:music/widgets/navbar_widget/navBar_widget.dart';
import 'package:music/widgets/home_widgets/leading_home_widget.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeView> {
  // Initialize controller
  final HomeController controller = HomeController();
  refresh() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      controller.isLoading=false;
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Use the leading widget
        leading: leadinHomeWidget(),
        title: const Center(
          child: Text(
            "Podkes",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 31),
            child: Image.asset(
              width: 21,
              height: 21,
              "assets/icons/Notification.png",
            ),
          ),
        ],
        backgroundColor: const Color(0xff201D2B),
      ),
      bottomNavigationBar: navBarWidget(controller, refresh, context),
      drawer: const Drawer(child: Text("data")),
      backgroundColor: const Color(0xff201D2B),

      body: Container(
        padding: const EdgeInsets.all(24),
        color: const Color(0xff201D2B),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(37, 40, 54, 1),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(37, 40, 54, 1),
                  ),
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                suffixIcon: Image.asset(
                  width: 14,
                  height: 14,
                  "assets/icons/Search.png",
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.listOfCategoryWidgets.length,
                itemBuilder: (BuildContext context, int index) {
                  return controller.listOfCategoryWidgets[index];
                },
              ),
            ),
            const Text(
              "Trending",
              style: TextStyle(
                color: Color.fromRGBO(244, 247, 252, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                ),
                itemCount: listOfMusic.length,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                    controller.isLoading? null : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  DetailsMusicView(music: listOfMusic[index]),
                        ),
                      );
                    },
                    child:controller.shimmerOrCard(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
