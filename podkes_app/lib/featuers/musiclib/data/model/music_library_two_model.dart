class MusicLibraryTwoModel {
  final String image;

  final String title;
  final String subTitle;

  MusicLibraryTwoModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<MusicLibraryTwoModel> container2Data = [
  MusicLibraryTwoModel(
    image: "assets/imeges/Plus.png",
    title: "Create Playlist",
    subTitle: "",
  ),
  MusicLibraryTwoModel(
    image: "assets/imeges/playlist1.png",
    title: "Kumpulan kocakers",
    subTitle: "4 Channel 20 Playlist",
  ),
  MusicLibraryTwoModel(
    image: "assets/imeges/library1.png",
    title: "Membagongkan",
    subTitle: "Yesterday",
  ),
];
