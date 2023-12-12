import 'package:get/get.dart';

import '../controllers/song_screen_controller.dart';

class SongScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SongScreenController>(
      () => SongScreenController(),
    );
  }
}
