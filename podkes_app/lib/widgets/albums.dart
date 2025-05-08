import 'package:flutter/material.dart';
import 'package:podkes_app/extensions/screens/get_size_screen.dart';
import 'package:podkes_app/models/albums_content.dart';
import 'package:shimmer/shimmer.dart';

/// Albums widget displays a grid of album cards with shimmer loading effect
class Albums extends StatefulWidget {
  const Albums({super.key});

  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  bool isEnabled = true; // Controls for shimmer
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
    return GridView.builder(
      itemCount: albumsInfo.length, // Number of albums to display
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        // If isEnabled is true show shimmer effect
        if (isEnabled) {
          return Shimmer.fromColors(
            enabled: isEnabled,
            baseColor: Colors.grey.shade600,
            highlightColor: Colors.grey.shade400,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        } else {
          // Once isEnabled is false show the actual content
          return SizedBox(
            child: InkWell(
              onTap: () {
                // Show bottom sheet content to listen to the podcast
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Color.fromRGBO(31, 29, 43, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),

                  isScrollControlled: true,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        spacing: 16,
                        children: [
                          SizedBox(height: 60),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                                ),
                              ),
                              Text(
                                'New Playing',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(
                              width: context.getWidth() + 130,
                              height: context.getHeight() * 0.75,
                              child: Column(
                                spacing: 16,
                                children: [
                                  Image.asset(
                                    albumsInfo[index].imageUrl,

                                    fit: BoxFit.contain,
                                  ),

                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      albumsInfo[index].title,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      albumsInfo[index].prodcaster,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/sound.png',

                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              // Album details content
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Image.asset(
                      albumsInfo[index].imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      albumsInfo[index].title,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      albumsInfo[index].prodcaster,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
