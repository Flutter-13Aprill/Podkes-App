# Podkes App

A sleek Flutter podcast app with smooth navigation, animated loading states, and a clean onboarding experience.

## Features

### 1. Bottom Navigation Bar
- Navigate between: **Explore**, **Library**, and **Profile** screens.
- Active tab is highlighted clearly.

### 2. Shimmer Loading Effects
Implemented using the `shimmer` package to enhance loading experience:

- **Now Playing Screen**: shimmer on the podcast image while loading.
- **Profile Screen**:
  - Shimmer on the profile avatar (CircleAvatar).
  - Shimmer on the profile options container.

### 3. Smooth Onboarding
- Built with `PageView` and the `smooth_page_indicator` package.
- Includes:
  - Smooth animated dots.
  - Navigation button that switches from "Next" to **Explore**.
  - Final screen transitions to the **Explore** page.

### 4. Clean and Modern UI
- Dark theme with vibrant colors.
- Includes:
  - **Getting Started** screen
  - **Now Playing** screen with audio timeline
  - **Trending Podcasts** in Explore
  - **Playlist Management** in Library
  - **Profile Settings** with logout

  ### 5. Exit Confirmation Dialog
- When the user taps the **Logout** button in the Profile screen, an `AlertDialog` appears.
- The dialog asks the user to confirm if they want to exit the app.
- If the user confirms, the app exits using `SystemNavigator.pop()`.


## Packages Used

- [`shimmer`](https://pub.dev/packages/shimmer) – for animated loading placeholders
- [`smooth_page_indicator`](https://pub.dev/packages/smooth_page_indicator) – for animated onboarding indicators

## Screenshots

![GettingStarted](screenshots\start.png)

![Explore](screenshots\explore.png)

![Nowplaying](screenshots\nowplaying.png)

![Nowplaying shimmer](screenshots\shimmer_now_playing.png)

![Library](screenshots\library.png)

![Profile](screenshots\profile.png)

![Profile shimmer](screenshots\shimmer_profile.png)

![Alertdilog](screenshots\alertdialog.png)







