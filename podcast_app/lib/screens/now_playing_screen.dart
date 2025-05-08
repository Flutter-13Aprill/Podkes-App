import 'package:flutter/material.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 29, 43),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          "Now Playing",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 29, 43),
      body: Center(
        child: SizedBox(
          width: 320,
          height: 650,
          child: Column(
            children: [
              SizedBox(
                child: Image.asset(
                  "assets/images/first_album.png",
                  scale: 0.50,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "The missing 96 percent of the universe",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Claire Malone",
                  style: TextStyle(
                      color: Color.fromARGB(127, 204, 204, 204),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Image.asset("assets/icons/playerBar.png"),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "24:32",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "34:00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 36,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 47, 49, 66),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  const Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 36,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
