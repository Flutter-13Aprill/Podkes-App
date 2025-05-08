import 'package:flutter/material.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';
class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
   Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
    home: Scaffold(backgroundColor: Color.fromARGB(255, 31, 29, 43),
body: SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
SizedBox(height: context.getheight()*0.09,width: context.getwidth(),),
Container(width: context.getwidth()*0.48,height: context.getheight()*0.29,alignment: Alignment.center,decoration: 
BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(context.getwidth()*0.75),topRight: Radius.circular(context.getwidth()*0.75)),color: Colors.transparent),child:
//image container
Image.asset('assets/images/intro.png',fit: BoxFit.fill,) ),
SizedBox(height: 100,),
Text('Podkes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: context.getwidth()*0.08),),
Padding(
  padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.06),
  child: Text.rich(softWrap: true,textAlign:TextAlign.center ,
  //down text
  TextSpan(text: 'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',style: 
  TextStyle(color: Colors.white,fontSize: context.getwidth()/10*0.36))),
)
],)),

    ),);
  }
}