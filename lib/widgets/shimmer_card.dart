import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_ui_clone/constants/colors.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: SpotifyColors.surface,
      highlightColor: SpotifyColors.muted.withOpacity(0.5),
      child: Container(
        width: 160,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
