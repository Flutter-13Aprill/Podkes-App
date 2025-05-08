import 'package:flutter/material.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';

class PlayNow extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const PlayNow({super.key,required this.imagePath,required this.title , required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(iconTheme: const IconThemeData(color: Colors.white),automaticallyImplyLeading: true,centerTitle: true,backgroundColor: Color.fromARGB(255, 31, 29, 43),title: Text('Now Playing',style: TextStyle(color: Colors.white),),),
      body: Column(children: [
        SizedBox(width: context.getwidth(),height: context.getheight()*0.01,),
        //show image
        Image.asset(imagePath,height: context.getheight()*0.25,),
        //show title
        Text(title,style: TextStyle(color: Colors.white),),
        SizedBox(height: context.getheight()*0.01,),
        //show subtitle
        Text(subtitle,style: TextStyle(color: Colors.white),),
        SizedBox(height: context.getheight()*0.24,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.08),
          //progress for music
          child: Image.asset('assets/images/fooo.png'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.08),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('24:32',style: TextStyle(color: Colors.white),),Text('34:00',style: TextStyle(color: Colors.white),),],),
        ),
        //controll list
        SizedBox(height: context.getheight()*0.02,),
        Image.asset('assets/images/player.png')
      ],),
      );
  }
}