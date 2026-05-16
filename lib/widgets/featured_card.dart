import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: SpotifyColors.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Positioned(
              right: -30,
              bottom: -30,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: SpotifyColors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: SpotifyColors.background,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text('NEW RELEASE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: SpotifyColors.text)),
                  ),
                  const Spacer(),
                  const Text('Discover', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: SpotifyColors.text)),
                  const SizedBox(height: 4),
                  const Text('New tracks curated for you', style: TextStyle(fontSize: 14, color: SpotifyColors.muted)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: SpotifyColors.text,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text('Play now', style: TextStyle(color: SpotifyColors.background, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.add_circle_outline, color: SpotifyColors.muted, size: 28),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
