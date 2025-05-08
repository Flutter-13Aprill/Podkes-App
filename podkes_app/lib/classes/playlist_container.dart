import 'package:flutter/material.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';
import 'package:podkes_app/classes/playing_now.dart';

class PlaylistContainer extends StatelessWidget {
 final String title;
  final String imagePath1;
  final String albumsTitle1;
final String albumsSubTitle1;
final String imagePath2;
  final String albumsTitle2;
final String albumsSubTitle2;
final String imagePath3;
  final String albumsTitle3;
final String albumsSubTitle3;
  const PlaylistContainer({super.key,required this.title ,required this.imagePath1 ,required this.albumsTitle1,required this.albumsSubTitle1 , required this.imagePath2,required this.albumsTitle2,required this.albumsSubTitle2,required this.imagePath3 , required this.albumsTitle3 ,required this.albumsSubTitle3});

  @override
  Widget build(BuildContext context) {
    return Padding(
 padding:  EdgeInsets.symmetric(horizontal: context.getwidth()*0.08),
      child: Container(width: context.getwidth()*0.8,decoration: 
      BoxDecoration(borderRadius: 
      BorderRadius.all(Radius.circular(20)),color: Color.fromARGB(255,37, 40, 54) ),child:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: context.getwidth()*0.05),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height: context.getheight()*0.03,width: context.getwidth()*0.80,),
        Text(title,style: TextStyle(color: Color.fromARGB(255,245, 245, 255)),),
        //button for move to playing now
        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayNow(imagePath:imagePath1,title:albumsTitle1,subtitle:albumsSubTitle1 ))); },
          child: ListTile(leading: 
          Image.asset(imagePath1),title: 
          Text(albumsTitle1,style: TextStyle(color: Colors.white),),subtitle: 
          Text(albumsSubTitle1,style: TextStyle(color: Color.fromARGB(255,245, 245, 255))),),
        ),
        //button for move to playing now
        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayNow(imagePath:imagePath2,title:albumsTitle2,subtitle:albumsSubTitle2)));},
          child: ListTile(leading: 
        Image.asset(imagePath2),title: 
        Text(albumsTitle2,style: TextStyle(color: Colors.white)),subtitle: 
        Text(albumsSubTitle2,style: TextStyle(color: Color.fromARGB(255,245, 245, 255))),)),
        //button for move to playing now
        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayNow(imagePath:imagePath3,title:albumsTitle3,subtitle:albumsSubTitle3 )));},
          child: ListTile(leading: 
        Image.asset(imagePath3),title: 
        Text(albumsTitle3,style: TextStyle(color: Colors.white)),subtitle: 
        Text(albumsSubTitle3,style: TextStyle(color: Color.fromARGB(255,245, 245, 255))),))
        
        
        ],),
      ),),
    );
  }
}