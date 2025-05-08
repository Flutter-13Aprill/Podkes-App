import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 25, 40),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 25, 40),
        toolbarHeight: 100,
      ),

      body: Center(child: Text("page1")),
    );
  }
}
