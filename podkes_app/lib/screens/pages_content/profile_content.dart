import 'package:flutter/material.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';
//ptofile content class
class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 29, 43),
      //app bar for app
      appBar: AppBar(centerTitle: true,backgroundColor: Color.fromARGB(255, 31, 29, 43),title: Text('Profile',style: TextStyle(color: Colors.white),),),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: context.getwidth()*0.10),
        child: Column(children: [
        SizedBox(width: context.getwidth(),height: context.getheight()*0.03,),
        //profile image
        Container(decoration: BoxDecoration(shape: BoxShape.circle,),child: Image.asset('assets/images/Ava.png'),),
        SizedBox(height: context.getheight()*0.03,),
        Text('Change Profile',style: TextStyle(color: Colors.white),),
        //list tiles
        SizedBox(height: context.getheight()*0.03,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color:Color.fromARGB(255,37, 40, 54)),child: Column(children: [
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide(color:Color.fromARGB(50,255, 255, 255), width: 1),left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child: ListTile(leading: Image.asset('assets/images/profileicon1.png'),title:Text('Change Theme',style: TextStyle(color: Colors.white),),)),
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide(color:Color.fromARGB(50,255, 255, 255), width: 1),left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child:ListTile(leading: Image.asset('assets/images/profileicon2.png'),title:Text('Privacy',style: TextStyle(color:Colors.white),),),),
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide(color:Color.fromARGB(50,255, 255, 255), width: 1),left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child:ListTile(leading: Image.asset('assets/images/profileicon3.png'),title:Text('About',style: TextStyle(color: Colors.white),),)),
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide.none,left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child:ListTile(leading: Image.asset('assets/images/profileicon4.png'),title:Text('Logout',style: TextStyle(color: Colors.white),),))
        
        
        ],),)
        
        
        
        ],),
      ),
  ));
  }
}