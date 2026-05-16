import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';

class RecentlyPlayedCard extends StatelessWidget {
  final String title;
  final String image;

  const RecentlyPlayedCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SpotifyColors.surface,
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            color: SpotifyColors.muted.withOpacity(0.2),
            child: const Icon(Icons.music_note, color: SpotifyColors.muted),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: SpotifyColors.text,
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
