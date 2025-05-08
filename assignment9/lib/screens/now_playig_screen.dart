import 'package:assignment9/extensions/get_size.dart';
import 'package:flutter/material.dart';

// a page that will take the name and the image and person form explore thumbnails to display it here

class NowPlayigScreen extends StatelessWidget {
  const NowPlayigScreen({
    super.key,
    required this.setImage,
    required this.setTitle,
    required this.setName,
  });
  final String setImage;
  final String setTitle;
  final String setName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Container(
          width: context.getWidth() * 0.7,
          child: Text(
            textAlign: TextAlign.center,
            'Now Playing',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: context.getWidth() * 0.697,
          height: context.getHeight() * 0.7,
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: context.getWidth() * 0.7,
                //image setter
                height: context.getHeight() * 0.3,
                child: Image.asset(
                  setImage,
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                ),
              ),//title setter
              Text(
                textAlign: TextAlign.start,
                setTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //person setter
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.end,
                  setName,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              Image.asset(
                'assets/project_images/music_bar_image.png',
                alignment: Alignment.centerLeft,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('24:32', style: TextStyle(color: Colors.white)),
                  Text('34:00', style: TextStyle(color: Colors.white)),
                ],
              ),
              SizedBox(height: 25),
              Row(
                spacing: 32,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.skip_previous, color: Colors.white),

                  Container(
                    width: context.getWidth() * 0.13,
                    height: context.getHeight() * 0.059,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 47, 49, 66),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Icon(Icons.skip_next, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
