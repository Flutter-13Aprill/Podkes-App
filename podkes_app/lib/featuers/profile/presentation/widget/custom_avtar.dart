import 'package:flutter/material.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:shimmer/shimmer.dart';

class CustomAvtar extends StatefulWidget {
  const CustomAvtar({super.key});

  @override
  State<CustomAvtar> createState() => _CustomAvtarState();
}

class _CustomAvtarState extends State<CustomAvtar> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading == true) {
      return Shimmer.fromColors(
        baseColor: Colors.grey.shade800,
        highlightColor: Colors.grey.shade600,
        period: const Duration(seconds: 2),
        child: CircleAvatar(
          radius: 80,
          backgroundColor: AppPalette.containersColor,
        ),
      );
    } else {
      return CircleAvatar(
        radius: 80,
        backgroundColor: AppPalette.containersColor,
        backgroundImage: const AssetImage("assets/imeges/avtar.png"),
      );
    }
  }
}
