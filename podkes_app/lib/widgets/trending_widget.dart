import 'package:flutter/material.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({
    super.key,
    required this.imagePath,
    this.image2,
    required this.title1,
    required this.title2,
    required this.author,
    required this.backgroundColor,
    this.onTap,
  });
  final String imagePath;
  final String? image2;
  final String title1;
  final String title2;
  final String author;
  final Color backgroundColor;
  final VoidCallback? onTap;

  @override
  State<TrendingWidget> createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ?? () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 175,
            width: 180,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                if (widget.image2 != null)
                  Positioned(
                    top: 40,
                    left: 40,
                    child: Image.asset(widget.image2!, width: 70, height: 70),
                  ),
                Positioned(
                  bottom: -9,
                  right: 12,
                  child: Image.asset(widget.imagePath, height: 140, width: 190),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.title1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.title2,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(widget.author, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
