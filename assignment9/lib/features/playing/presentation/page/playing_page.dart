import 'package:assignment9/core/extension/git_size.dart';
import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/theme/app_palette.dart';
import 'package:assignment9/features/playing/presentation/widget/custom_audio_filewaveforms.dart';
import 'package:flutter/material.dart';

class PlayingPage extends StatelessWidget {
  const PlayingPage({
    super.key,
    required this.image,
    required this.description,
    required this.name,
  });
  final String image;
  final String description;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Now Playing")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  width: context.getWidth() * 0.90,
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(description, style: TextStyles.inter700),
              subtitle: Text(
                name,
                style: TextStyles.inter70013.copyWith(
                  color: AppPalette.grayColor,
                ),
              ),
            ),
            CustomAudioFilewaveforms(),
          ],
        ),
      ),
    );
  }
}
