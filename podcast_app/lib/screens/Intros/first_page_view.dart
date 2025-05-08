import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/getting_started.png"),
          const Text("Podkes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700)),
          const Text(
            """A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.""",
            style: TextStyle(
                color: Color.fromARGB(255, 196, 196, 196),
                fontSize: 13,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
