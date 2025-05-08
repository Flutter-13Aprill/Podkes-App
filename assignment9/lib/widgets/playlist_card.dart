import 'package:assignment9/extensions/get_size.dart';
import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key});
//same card in library but to divide the code

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 30, 40, 54),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: context.getWidth() * 0.73,
                height: context.getHeight() * 0.33,

                child: Container(
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  child: Column(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your playlist',
                        style: TextStyle(color: const Color.fromARGB(255, 255, 245, 255),fontSize: 14),
                      ),
                      Row(
                        spacing: 16,
                        children: [
                          Container(
                            width: context.getWidth() * 0.126,
                            height: context.getHeight() * 0.0567,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 196, 196, 196),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 196, 196, 196),
                            ),
                          ),
                          Text(
                            'Create Playlist',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 16,
                        children: [
                          Container(
                            width: context.getWidth() * 0.126,
                            height: context.getHeight() * 0.0567,
                            child: Image.asset(
                              'assets/project_images/playlist_blue_image.png',
                            ),
                          ),
                          Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kumpulan kocakers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                spacing: 6,
                                children: [
                                  Text(
                                    '4 Channel',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 196, 196, 196),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Container(
                                    width: context.getWidth() * 0.009,
                                    height: context.getHeight() * 0.004,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromARGB(255, 196, 196, 196),
                                    ),
                                  ),
                                  Text(
                                    '20 Playlist',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 196, 196, 196),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 16,
                        children: [
                          Container(
                            width: context.getWidth() * 0.126,
                            height: context.getHeight() * 0.0567,
                            child: Image.asset(
                              'assets/project_images/playlist_orange_image.png',
                            ),
                          ),
                          Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kumpulan kocakers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                spacing: 6,
                                children: [
                                  Text(
                                    '4 Channel',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 196, 196, 196),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Container(
                                    width: context.getWidth() * 0.009,
                                    height: context.getHeight() * 0.004,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromARGB(255, 196, 196, 196),
                                    ),
                                  ),
                                  Text(
                                    '20 Playlist',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 196, 196, 196),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}