# Spotify Home Screen UI Clone
### HackSlash — Nougat Flutter Team Induction Task

## Overview
A static Flutter application that replicates the Spotify Home Screen UI.
Built purely with Flutter widgets — no backend, no API calls.

## Features
- Dark themed Spotify-style UI
- App bar with icons
- Filter chips (All, Music, Podcasts, Audiobooks)
- 2-column recently played grid
- Featured playlist card with gradient overlay
- Horizontal scroll carousels (Made For You, New Releases)
- Circular artist cards
- Bottom Navigation Bar
- Responsive layout using MediaQuery

## How to Run
```
flutter pub get
flutter run
```

## Challenges
- Nesting GridView inside CustomScrollView required shrinkWrap and NeverScrollableScrollPhysics
- Matching Spotify's exact color palette (#1DB954, #121212, #282828)
- Making the layout responsive across different screen sizes

## Potential Improvements
- Add network images using cached_network_image package
- Add shimmer loading animations
- Implement a search screen
- Add mini player at the bottom
