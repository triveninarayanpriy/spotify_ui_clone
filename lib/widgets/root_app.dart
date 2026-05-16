import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';
import 'package:spotify_ui_clone/widgets/home_screen.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpotifyColors.background,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: _activeTab,
      children: const [
        HomeScreen(),
        Center(child: Text("Search", style: TextStyle(color: SpotifyColors.text, fontSize: 20))),
        Center(child: Text("Library", style: TextStyle(color: SpotifyColors.text, fontSize: 20))),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home_filled,
      Icons.search,
      Icons.library_music,
    ];
    List labels = [
      "Home",
      "Search",
      "Your Library",
    ];
    
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: SpotifyColors.background.withOpacity(0.9),
        currentIndex: _activeTab,
        onTap: (index) {
          setState(() {
            _activeTab = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: SpotifyColors.text,
        unselectedItemColor: SpotifyColors.muted,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        items: List.generate(items.length, (index) {
          return BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Icon(items[index]),
            ),
            label: labels[index],
          );
        }),
      ),
    );
  }
}
