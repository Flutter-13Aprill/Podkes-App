import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListtileWidget extends StatelessWidget {
  const ShimmerListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: SvgPicture.asset("assets/icons/theme.svg"),
          title: Container(height: 16, width: 30, color: Colors.grey.shade700),
        ),
      ),
    );
  }
}
