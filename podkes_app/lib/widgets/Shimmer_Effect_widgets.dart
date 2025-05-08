import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmer_Effect extends StatefulWidget {
  const Shimmer_Effect({super.key,required this.image});
final String image;
  @override
  State<Shimmer_Effect> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<Shimmer_Effect> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          isLoading
              ? Shimmer.fromColors(
                baseColor: Colors.grey[800]!,
                highlightColor: Colors.grey[600]!,
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
              : Container(
                alignment: Alignment.bottomCenter,
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 10, 171),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Image.asset(
                    widget.image,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
    );
  }
}
