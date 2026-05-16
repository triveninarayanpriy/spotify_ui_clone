import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/featured_section.dart';
import 'package:spotify_ui_clone/widgets/section_header.dart';
import 'package:spotify_ui_clone/widgets/recently_played_grid.dart';
import 'package:spotify_ui_clone/widgets/featured_card.dart';
import 'package:spotify_ui_clone/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Good evening'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 8),
                RecentlyPlayedGrid(),
                SizedBox(height: 24),
                FeaturedCard(),
                SizedBox(height: 24),
                SectionHeader(title: 'Jump back in'),
                FeaturedSection(),
                SizedBox(height: 24),
                SectionHeader(title: 'Made for You'),
                FeaturedSection(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
