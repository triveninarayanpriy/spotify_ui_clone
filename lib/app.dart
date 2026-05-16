import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/constants/colors.dart';
import 'package:spotify_ui_clone/widgets/root_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify UI Clone',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: SpotifyColors.green,
        scaffoldBackgroundColor: SpotifyColors.background,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: SpotifyColors.text)),
        useMaterial3: false,
      ),
      home: const RootApp(),
    );
  }
}
