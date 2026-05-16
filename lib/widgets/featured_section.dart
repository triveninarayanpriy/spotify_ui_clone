import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/strings.dart';
import 'music_card.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = mockFeatured[index];
          return MusicCard(title: item['title']!, subtitle: item['subtitle']!, image: item['image']!);
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: mockFeatured.length,
      ),
    );
  }
}
