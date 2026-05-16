import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';
import 'package:spotify_ui_clone/constants/strings.dart';

class ArtistSection extends StatelessWidget {
  const ArtistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final artist = mockArtists[index];
          return Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: SpotifyColors.surface,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person, size: 48, color: SpotifyColors.muted),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 100,
                child: Text(
                  artist['name']!,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w600, color: SpotifyColors.text, fontSize: 13),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: mockArtists.length,
      ),
    );
  }
}
