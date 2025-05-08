import 'package:flutter/material.dart';

// This widget represents a bottom sheet UI for playing podcasts, showing the current playing podcast details.
//
// - `imagePath`: Path to the podcast image asset (used for the podcast cover).
// - `personName`: The name of the podcast host/creator.
// - `podcastName`: The title of the podcast being played.
//
// The widget layout includes:
// - A header section with "Now Playing" text and a back button.
// - The podcast image (cover art) centered in the UI.
// - The podcast name and host name displayed beneath the image.
// - A sound wave image to represent audio activity.
// - A progress bar showing the current time vs the total duration of the podcast.
// - Playback controls including skip, play/pause, and next buttons.

class SheetBottomWidget extends StatelessWidget {
  final String podcastName;
  final String personName;
  final String imagePath;

  const SheetBottomWidget({
    super.key,
    required this.imagePath,
    required this.personName,
    required this.podcastName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1f1d2d),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(24.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Now Playing",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),

            Align(
              alignment: Alignment.center,
              child: Image.asset(imagePath, height: 350, width: 350),
            ),
            SizedBox(height: 8),
            Text(
              podcastName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                personName,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),

            Image.asset("assets/images/sound-waves.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("24:32", style: TextStyle(color: Colors.grey)),
                  Text("34:00", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.skip_previous, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff252836),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Icon(Icons.skip_next, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
