import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/theme/app_palette.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';

class CustomAudioFilewaveforms extends StatelessWidget {
  CustomAudioFilewaveforms({super.key});
  final playerController = PlayerController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("24:32", style: TextStyles.inter70013),
              Image.asset("asset/image/wave.png", height: 170),
              Text("34:00", style: TextStyles.inter70013),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.skip_previous, color: AppPalette.whiteColor),
              const SizedBox(width: 30),
              CircleAvatar(
                radius: 30,
                backgroundColor: AppPalette.containerColor,
                child: Icon(
                  Icons.play_arrow,

                  size: 36,
                  color: AppPalette.whiteColor,
                ),
              ),
              const SizedBox(width: 30),
              const Icon(Icons.skip_next, color: AppPalette.whiteColor),
            ],
          ),
        ],
      ),
    );
  }
}
