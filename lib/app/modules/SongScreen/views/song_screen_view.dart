import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/song_screen_controller.dart';

class SongScreenView extends GetView<SongScreenController> {
  const SongScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SongScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SongScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
