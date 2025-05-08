import 'package:flutter/material.dart';
import 'package:podkes_app/Extensions_screen/screen_size.dart';
import 'package:podkes_app/classes/playing_now.dart';


class AlbumItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  

   const AlbumItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    
  });

  @override
  Widget build(BuildContext context) {
    // main container and represent the menu card 
    return InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayNow(imagePath: imagePath, title: title, subtitle: subtitle)));},
      child: SizedBox(
        width: (context.getwidth()*0.47),
        height: (context.getheight()*0.35),
        child:  
        // main column 
        Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: context.getwidth()*0.47,),
             Padding(
              padding:  EdgeInsets.only(left:10),
               child: SizedBox(
                 height: context.getheight() * 0.24,
                 width: context.getwidth()*0.47,
                 child: ClipRRect(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                   child: Image.asset(
                     imagePath,
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
             ),
      
            
          
            // the title text
         
               Padding(
                 padding:  EdgeInsets.only(left:10),
                 child: SizedBox(height: context.getheight()*0.05,width: context.getwidth()*0.47 ,child:Text(
                  title,softWrap: true,
                  style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: context.getwidth()/10*0.37),
                           ),
                 ),
               ),
             
       
           Padding(
             padding:  EdgeInsets.only(left:10),
             child: SizedBox(height: context.getheight()*0.02,width: context.getwidth()*0.47 ,child: Text(
                subtitle,softWrap: true,
                style:  TextStyle(color: Colors.white,fontSize: context.getwidth()/10*0.14),
              ) ,),
           )
            //sub title text
            
            
           
             
           
          
           
           
        
        ])),
    );
  }
}