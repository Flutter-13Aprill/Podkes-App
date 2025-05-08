import 'package:flutter/material.dart';
import 'package:podkes/extintions/screens/get_size_screen.dart';
import 'package:podkes/screens/explore_screen.dart';

class ClaireMaloneScreen extends StatelessWidget {
  const ClaireMaloneScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ), // you can change icon and color
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ExploreScreen()),
            );
          },
        ),
        title: Text(
          'Now Playing',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        
        child: SizedBox(
          width: context.getWidth()*0.8,
          child: Column(
          
          spacing: 8,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/1.png',width: context.getWidth()*0.8,),
            // you could put text here too if needed
          ],
              ),
            Text('The missing 96 percent of the universe', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
            Text('Claire Malone', style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 179, 179, 179)),),
            SizedBox(height: 16,),
            Image.asset('assets/fooo.png'),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('24:32', style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 179, 179, 179))),
                Text('24:32', style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 179, 179, 179)))
              ],
            ),
            SizedBox(height: 8,),
            Center(child: Image.asset('assets/play.png'),),
            SizedBox(height: 32,),


          ],),
        ),
      ),
    );
  }
}