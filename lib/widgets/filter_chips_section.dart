import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';

class FilterChipsSection extends StatelessWidget {
  const FilterChipsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> filters = ['All', 'Music', 'Podcasts', 'Audiobooks'];

    return SizedBox(
      height: 32,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = index == 0;
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? SpotifyColors.green : SpotifyColors.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              filters[index],
              style: TextStyle(
                color: isSelected ? SpotifyColors.background : SpotifyColors.text,
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
              ),
            ),
          );
        },
      ),
    );
  }
}
