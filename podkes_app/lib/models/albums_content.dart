//Class represent AlbumsContent
class AlbumsContent {
  String imageUrl;
  String title;
  String prodcaster;

  // Constructor to initialize
  AlbumsContent({
    required this.imageUrl,
    required this.title,
    required this.prodcaster,
  });
}

// List of albumsInfo
final List<AlbumsContent> albumsInfo = [
  AlbumsContent(
    imageUrl: 'assets/images/album1.png',
    title: 'The missing 96 percent of the universe',
    prodcaster: 'Claire Malone',
  ),
  AlbumsContent(
    imageUrl: 'assets/images/album2.png',
    title: 'How Dolly Parton led me to an epiphany',
    prodcaster: 'Abumenyang',
  ),
  AlbumsContent(
    imageUrl: 'assets/images/album3.png',
    title: 'The missing 96 percent of the universe',
    prodcaster: 'Tir McDohl',
  ),
  AlbumsContent(
    imageUrl: 'assets/images/album4.png',
    title: 'Ngobam with Denny Caknan',
    prodcaster: 'Denny Kulon',
  ),
];
