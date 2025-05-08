class LibraryModel {
  final String? type;
  final String podcast;
  final String? day;
  final String image;

  LibraryModel({
    this.type,
    required this.podcast,
    this.day,
    required this.image,
  });
}

List<LibraryModel> libraryData = [
  LibraryModel(
    type: 'Played recently',
    podcast: 'Podcast Medoan',
    day: 'Today',
    image: 'asset/image/Group3.png',
  ),
  LibraryModel(
    podcast: 'Podcast Antono',
    day: 'Yesterday',
    image: 'asset/image/Group2.png',
  ),
  LibraryModel(
    podcast: 'Podcast Medoan',
    day: 'Yesterday',
    image: 'asset/image/Group3.png',
  ),
  //---------------------------------------
  LibraryModel(
    type: 'Your playlist',
    podcast: 'Create Playlist',
    image: 'asset/image/Plus.png',
  ),
  LibraryModel(
    podcast: 'Kumpulan kocakers',
    day: '4 Channel 20 Playlist ',
    image: 'asset/image/group5.png',
  ),
  LibraryModel(
    podcast: 'Membagongkan',
    day: '4 Channel 20 Playlist ',
    image: 'asset/image/group6.png',
  ),
];
