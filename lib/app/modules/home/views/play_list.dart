import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotefy/app/data/play_list_model.dart';
import 'package:spotefy/app/routes/app_pages.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    super.key,
    required this.playlist,
  });

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PLAYLIST_SCREEN, arguments: playlist);
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade800.withOpacity(.6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                playlist.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    playlist.title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    '${playlist.songs.length} songs',
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
