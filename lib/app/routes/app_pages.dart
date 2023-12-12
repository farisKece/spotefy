import 'package:get/get.dart';

import '../modules/PlaylistScreen/bindings/playlist_screen_binding.dart';
import '../modules/PlaylistScreen/views/playlist_screen_view.dart';
import '../modules/SongScreen/bindings/song_screen_binding.dart';
import '../modules/SongScreen/views/song_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SONG_SCREEN,
      page: () => const SongScreenView(),
      binding: SongScreenBinding(),
    ),
    GetPage(
      name: _Paths.PLAYLIST_SCREEN,
      page: () => const PlaylistScreenView(),
      binding: PlaylistScreenBinding(),
    ),
  ];
}
