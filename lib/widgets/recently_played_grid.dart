import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/strings.dart';
import 'recently_played_card.dart';

class RecentlyPlayedGrid extends StatelessWidget {
  const RecentlyPlayedGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final int crossAxisCount = screenWidth > 600 ? 3 : 2;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mockRecently.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 3.0,
        ),
        itemBuilder: (context, index) {
          final item = mockRecently[index];
          return RecentlyPlayedCard(title: item['title']!, image: item['image']!);
        },
      ),
    );
  }
}
