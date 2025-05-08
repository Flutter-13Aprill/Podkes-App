import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

// This widget creates a shimmer effect for a ListTile that is used as a placeholder during data loading.
// - It shows a shimmer animation on the ListTile's icon and title to indicate loading state.
// - The shimmer effect is applied using the `Shimmer.fromColors` widget with a custom base and highlight color for a glowing effect.
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
