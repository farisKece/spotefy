class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'DJ Carnaval',
      description: 'Dj Carnaval',
      url: 'assets/music/carnaval.mp3',
      coverUrl: 'assets/images/carnaval.jpeg',
    ),
    Song(
      title: 'Nemen',
      description: 'Gilga - Nemen',
      url: 'assets/music/nemen.mp3',
      coverUrl: 'assets/images/nemen.jpg',
    ),
    Song(
      title: 'Dumes',
      description: 'Omwawes - Dumes',
      url: 'assets/music/dumes.mp3',
      coverUrl: 'assets/images/dumes.jpeg',
    ),
  ];
}
