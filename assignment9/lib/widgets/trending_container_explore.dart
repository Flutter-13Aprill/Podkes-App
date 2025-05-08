import 'package:assignment9/extensions/get_size.dart';
import 'package:assignment9/screens/now_playig_screen.dart';
import 'package:flutter/material.dart';

//here is the container for the trending so the code would be a lot shorter and simplified
//just give it the image and title and name and it will be placed on the right size 

class TrendingContainerExplore extends StatelessWidget {
  const TrendingContainerExplore({
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
    return InkWell(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => NowPlayigScreen(
                    setImage: setImage,
                    setTitle: setTitle,
                    setName: setName,
                  ),
            ),
          ),
      child: Container(
        height: context.getHeight() * 0.8,
        width: context.getWidth() * 0.375,
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.getWidth() ,
              height: context.getHeight()*0.2 ,
              child: Image.asset(fit: BoxFit.contain, setImage),
            ),
            Container(
              width: context.getWidth() * 0.35,
              child: Text(
                setTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(setName, style: TextStyle(color: Colors.white, fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
