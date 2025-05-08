import 'package:flutter/material.dart';

class PageView3 extends StatelessWidget {
  const PageView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 25, 40),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 25, 40),
        toolbarHeight: 200,
      ),

      body: Center(child: Text("page3")),
    );
  }
}
