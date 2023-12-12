import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotefy/app/data/song_model.dart';
import 'package:spotefy/app/modules/PlaylistScreen/views/seekbar.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

class PlaylistScreenController extends GetxController {
  AudioPlayer audioPlayer = AudioPlayer();
  Song song = Get.arguments ?? Song.songs[0];
  //TODO: Implement PlaylistScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    audioPlayer.setAudioSource(
      ConcatenatingAudioSource(
        children: [
          AudioSource.uri(
            Uri.parse('asset:///${song.url}'),
          ),
          AudioSource.uri(
            Uri.parse('asset:///${Song.songs[1].url}'),
          ),
        ],
      ),
    );
  }

  Stream<SeekBarData> get seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
        audioPlayer.positionStream,
        audioPlayer.durationStream,
        (
          Duration position,
          Duration? duration,
        ) {
          return SeekBarData(
            position,
            duration ?? Duration.zero,
          );
        },
      );

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    audioPlayer.dispose();
  }

  void increment() => count.value++;
}
