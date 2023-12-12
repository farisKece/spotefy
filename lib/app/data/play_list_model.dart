import 'package:spotefy/app/data/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlist = [
    Playlist(
      title: 'Dj, Hip-hop',
      songs: Song.songs,
      imageUrl:
          'https://1.bp.blogspot.com/-fJvP06ZOPNA/VzcW9Jpyy6I/AAAAAAAAO2I/71kPivzDQ7QhxMy1usPSYfc4ZEQ8gb6ygCLcB/s1600/dj%2Bsofia%2Bsovia.jpg',
    ),
    Playlist(
      title: 'Dj, Hip-hop',
      songs: Song.songs,
      imageUrl:
          'https://1.bp.blogspot.com/-fJvP06ZOPNA/VzcW9Jpyy6I/AAAAAAAAO2I/71kPivzDQ7QhxMy1usPSYfc4ZEQ8gb6ygCLcB/s1600/dj%2Bsofia%2Bsovia.jpg',
    ),
    Playlist(
      title: 'Dj, Hip-hop',
      songs: Song.songs,
      imageUrl:
          'https://1.bp.blogspot.com/-fJvP06ZOPNA/VzcW9Jpyy6I/AAAAAAAAO2I/71kPivzDQ7QhxMy1usPSYfc4ZEQ8gb6ygCLcB/s1600/dj%2Bsofia%2Bsovia.jpg',
    ),
  ];
}
