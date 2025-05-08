import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podkes/extensions/screen_size.dart';

class PlayingScreen extends StatelessWidget {
  
  /// [PlayingScreen] displays the current podcast that is being played.
  ///
  /// It takes the following parameters:
  /// - [imagePath]: The path to the podcast's thumbnail image.
  /// - [podcastTitle]: The title of the currently playing podcast.
  /// - [podcastAuthor]: The author or creator of the podcast.
  const PlayingScreen({super.key, required this.podcastTitle, required this.podcastAuthor, required this.imagePath});

  final String imagePath;
  final String podcastTitle;
  final String podcastAuthor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing', style: Theme.of(context).textTheme.titleMedium!.copyWith( fontWeight: FontWeight.w400,)),
        leading: TextButton(
          onPressed: () => Navigator.pop(context),
          child: SvgPicture.asset('assets/now_playing_screen/now_playing_screen_svgs/Vector (3).svg', fit: BoxFit.scaleDown,)
          ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          width: context.getWidth(),
          child: Column(
            children: [
    
              SizedBox(height: 24),
    
              Container(
                width: context.getWidth(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Image.asset(imagePath, fit: BoxFit.contain,)
                ),
    
                SizedBox(height: 24),
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(podcastTitle, style: Theme.of(context).textTheme.titleMedium,)
                ),
    
                SizedBox(height: 8),
    
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(podcastAuthor, style: Theme.of(context).textTheme.displaySmall)
                ),
    
                SizedBox(height: 32),
    
                Image.asset('assets/now_playing_screen/now_playing_screen_images/fooo.png'),
    
                SizedBox(height: 24),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('24:32', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Color(0xffF4F7FC))),
                    Text('34:00', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Color(0xffF4F7FC)))
                  ],
                ),
    
                SizedBox(height: 40),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/now_playing_screen/now_playing_screen_svgs/Skip Back.svg'),
                    
                    SizedBox(width: 24),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(0xff2F3142)
                      ),
                      child: SvgPicture.asset('assets/now_playing_screen/now_playing_screen_svgs/Play.svg', fit: BoxFit.scaleDown,) ,
                    ),
    
                    SizedBox(width: 24),
    
                    SvgPicture.asset('assets/now_playing_screen/now_playing_screen_svgs/Skip Fwd.svg')
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}