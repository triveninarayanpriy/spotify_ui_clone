# Spotify Home Screen UI Clone
### HackSlash — Nougat Flutter Team Induction | Task 1 

---

## Overview

A pixel-perfect static Flutter application that replicates the Spotify Home Screen UI.
Built as part of the HackSlash Nougat Flutter Team induction task. The app focuses
entirely on UI — no backend, no API calls, no authentication required.

---

## Features

- Dark themed UI matching Spotify's exact color palette
- Transparent floating app bar with Spotify logo and action icons
- Filter chips row — All, Music, Podcasts, Audiobooks
- 2-column recently played grid with colored playlist cards
- Featured playlist card with gradient overlay and play button
- Horizontal scroll carousel — Made For You section
- Horizontal scroll carousel — New Releases section
- Circular artist cards — Popular Artists section
- Bottom Navigation Bar with Home, Search, Library tabs
- Fully responsive layout using MediaQuery and Flexible widgets

---

## Tech Stack

| Tool | Purpose |
|---|---|
| Flutter 3.x | UI framework |
| Dart | Programming language |
| CustomScrollView | Smooth scrolling with SliverAppBar |
| GridView.builder | Responsive 2-column recently played grid |
| ListView.builder | Horizontal carousels |

---

## Project Structure
spotify_ui_clone/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── app.dart                     # MaterialApp + dark theme setup
│   ├── constants/
│   │   ├── colors.dart              # Spotify color palette constants
│   │   └── strings.dart             # Mock playlist, artist, album data
│   └── widgets/
│       ├── home_screen.dart         # Main scrollable home screen
│       ├── recently_played_grid.dart # 2x3 grid of playlist cards
│       ├── featured_section.dart    # Large featured card with gradient
│       ├── music_card.dart          # Reusable horizontal carousel card
│       └── section_header.dart      # "Made For You" + "See all" header
├── pubspec.yaml
└── README.md
---

## Color Palette Used

| Color | Hex Code | Used For |
|---|---|---|
| Background | `#121212` | Main screen background |
| Surface | `#282828` | Cards, bottom nav, chips |
| Spotify Green | `#1DB954` | Accents, play button, chips |
| White | `#FFFFFF` | Primary text |
| Grey | `#B3B3B3` | Secondary text, subtitles |
| Light Grey | `#535353` | Placeholder text |

---

## Setup Instructions

### Prerequisites
- Flutter SDK installed and added to PATH
- Android Studio with emulator OR physical Android device with USB debugging ON
- VS Code with Flutter + Dart extensions (recommended)

### Step 1 — Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/spotify_ui_clone.git
cd spotify_ui_clone
```

### Step 2 — Install dependencies
```bash
flutter pub get
```

### Step 3 — Run the app
```bash
flutter run
```

### Step 4 — Build APK (optional)
```bash
flutter build apk --release
```
APK will be at: `build/app/outputs/flutter-apk/app-release.apk`

---

## Screens Implemented

### App Bar
- Transparent floating app bar
- Spotify logo (green circle with music note)
- Notification, clock, and settings icons on the right

### Greeting + Filter Chips
- Dynamic greeting text — "Good evening"
- Horizontally scrollable filter chips
- Selected chip highlighted in Spotify green

### Recently Played Grid
- 2-column grid layout using GridView.builder
- Each card has a colored square on the left + playlist name
- shrinkWrap + NeverScrollableScrollPhysics inside CustomScrollView

### Featured Section
- Full-width card with colored background
- Dark gradient overlay from transparent to black
- Playlist title, subtitle, and circular green play button

### Made For You / New Releases
- Horizontal ListView.builder carousels
- Each card: 140x140 colored album art + title + subtitle
- Scrolls independently from the main list

### Popular Artists
- Horizontal row of CircleAvatar widgets
- Artist initial shown as large letter
- Artist name below each circle

### Bottom Navigation Bar
- Three tabs: Home, Search, Your Library
- Dark surface background matching Spotify

---

## Key Flutter Concepts Used

| Concept | Where Used |
|---|---|
| `CustomScrollView` + `SliverAppBar` | Main screen scrolling with floating app bar |
| `SliverToBoxAdapter` | Wrapping non-sliver content inside CustomScrollView |
| `GridView.builder` | Recently played 2-column grid |
| `ListView.builder` (horizontal) | Music carousels |
| `Stack` + `Positioned` | Gradient overlay on featured card |
| `FilterChip` | Category filter row |
| `CircleAvatar` | Artist circular images |
| `shrinkWrap` + `NeverScrollableScrollPhysics` | Nested scroll fix |
| `MediaQuery` | Responsive sizing |

---

## Challenges Faced

- Nesting `GridView` inside `CustomScrollView` caused layout overflow —
  fixed by adding `shrinkWrap: true` and `physics: NeverScrollableScrollPhysics()`
- Matching Spotify's exact spacing and color values required careful
  reference to the official Spotify design guidelines
- Making carousels scroll independently while the main screen also scrolls
  required using `SliverToBoxAdapter` to wrap all content correctly
- Keeping the app bar transparent while still floating above content
  needed `backgroundColor: Colors.transparent` + `floating: true`

---

## Potential Improvements

- Add network images using `cached_network_image` package with real album art
- Add shimmer loading animation using `shimmer` package
- Implement a working Search screen
- Add a mini player bar above the bottom navigation bar
- Connect to Spotify Web API for real data
- Add page transition animations between screens
- Implement `go_router` for proper navigation


## What I Learned

Building this project as a Flutter beginner with just one month of experience taught me:

- How `CustomScrollView` and Slivers work together for smooth scrolling
- The importance of widget composition — breaking UI into small reusable widgets
- How `shrinkWrap` and scroll physics interact in nested layouts
- How to use color constants and mock data to keep code clean and organized
- How responsive design works in Flutter using `MediaQuery` and `Flexible`

