import 'package:flutter/material.dart';

class NewPlayScreen extends StatelessWidget {
  const NewPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0XFF1F1D2B)),

      backgroundColor: Color(0XFF1F1D2B),
      body: Container(
        width: 480,
        height: 800,
         
        child: Stack(
          children: [
            Positioned(
              top: -70,
              child: SizedBox(
                width: 480,
                height: 826,
                child: Image.asset("assets/images/2.png", fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
