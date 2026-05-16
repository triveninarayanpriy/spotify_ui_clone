import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';
import 'package:spotify_ui_clone/widgets/shimmer_card.dart';

class MusicCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const MusicCard({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(milliseconds: 1500), () => true),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const ShimmerCard();
        }

        return Container(
          width: 160,
          decoration: BoxDecoration(
            color: SpotifyColors.surface,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(image.isNotEmpty && image.startsWith('http') ? image : 'https://via.placeholder.com/160'),
              fit: BoxFit.cover,
              onError: (exception, stackTrace) {},
            ),
          ),
          child: Stack(
            children: [
              const Center(child: Icon(Icons.music_note, size: 48, color: SpotifyColors.muted)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 12,
                right: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: SpotifyColors.text),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: SpotifyColors.muted, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
