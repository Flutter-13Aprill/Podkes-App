
# 🎧 Podkes App

A beautifully designed podcast app UI built with Flutter, inspired by a Figma prototype. The app provides an engaging, performant, and smooth user experience with navigation, shimmer loading effects, and polished UI elements.

---
## 🎥 App Preview

![App Preview](assets/preview.gif)



## 📱 Screenshots
<table>
  <tr>
    <th>Onboarding</th>
    <th>Discover</th>
    <th>Music</th>
    <th>Library</th>
    <th>Profile</th>
  </tr>
  <tr>
    <td><img src="assets/screenshots/onbording.png" width="150" style="border-radius:60px;"/></td>
    <td><img src="assets/screenshots/Discover.png" width="150" style="border-radius: 60px;"/></td>
    <td><img src="assets/screenshots/music.png" width="150" style="border-radius: 60px;"/></td>
    <td><img src="assets/screenshots/Library.png" width="150" style="border-radius: 60px;"/></td>
    <td><img src="assets/screenshots/Profile.png" width="150" style="border-radius: 60px;"/></td>
  </tr>
</table>

---

## 📌 Objective

The goal of this project is to replicate the **Podkes** app UI using Flutter. It serves as a showcase of responsive layout, clean UI components, and user interaction patterns in Flutter.

---


## Features
- **use MVC** 
- **reuse components**
### 1️⃣ Bottom Navigation Bar
- Three main tabs: **Discover**, **Library**, **Profile**
- Smooth animated transitions using `PageRouteBuilder`
- Active tab visually highlighted

### 2️⃣ Shimmer Effect (Loading UI)
- Loading placeholders for:
  - Podcast thumbnails
  - User profile Avatar
- Utilizes `shimmer` package (`^3.0.0`) to improve perceived performance

### 3️⃣ Dialogs and Bottom Sheets
- `AlertDialog` used for logout confirmation
- Clean and consistent UI styling

---

## 📁 Project Structure
```plaintext
lib/
├── controllers/
│   ├── circlerDot_controller.dart
│   ├── home_controller.dart
│   └── onBording_controller.dart
├── models/
│   ├── category_model.dart
│   ├── music_model.dart
│   └── onbording_model.dart
├── views/
│   ├── details_music_view.dart
│   ├── home_view.dart
│   ├── library_view.dart
│   ├── onBording_view.dart
│   └── profile_view.dart
├── widgets/
│   ├── circleDot_widget.dart
│   ├── mainButton_widget.dart
│   ├── home_widgets/
│   │   ├── card_music_widget.dart
│   │   ├── category_widget.dart
│   │   └── leading_home_widget.dart
│   ├── library_widgets/
│   │   ├── card_playlist_widget.dart
│   │   └── container_playlist_widget.dart
│   ├── navbar_widget/
│   │   └── navBar_widget.dart
│   ├── onbording_widgets/
│   │   └── onBording_widget.dart
│   ├── profile_widgets/
│   │   ├── card_profile_widget.dart
│   │   └── showLogoutDialog_widget.dart
│   └── shimmer_widgets/
│       ├── shimmerCardMusicWidget.dart
│       └── shimmer_avatar.dart
│──MainApp.dart
└── main.dart

---

## 🎨 Figma UI Design

Reference the official design file below:

🔗 [Figma Design](#)  
_(https://www.figma.com/design/YDFOISOftjHWDYC9i6P6T8/Podcast-Mobile-App--Community-?node-id=0-1&p=f&t=O1RhQR7hpHC0b93Z-0)_

