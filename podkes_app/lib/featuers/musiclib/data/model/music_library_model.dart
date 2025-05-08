class MusicLibraryModel {
  final String image;

  final String title;
  final String subTitle;

  MusicLibraryModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<MusicLibraryModel> container1Data = [
  MusicLibraryModel(
    image: "assets/imeges/library1.png",
    title: "Podcast Medoan",
    subTitle: "Today",
  ),
  MusicLibraryModel(
    image: "assets/imeges/library2.png",
    title: "Podcast Antono",
    subTitle: "Yesterday",
  ),
  MusicLibraryModel(
    image: "assets/imeges/library1.png",
    title: "Podcast Medoan",
    subTitle: "Yesterday",
  ),
];
