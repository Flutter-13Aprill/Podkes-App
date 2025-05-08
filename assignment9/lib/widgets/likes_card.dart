import 'package:assignment9/extensions/get_size.dart';
import 'package:flutter/material.dart';

class LikesCard extends StatelessWidget {
  const LikesCard({super.key});

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
                        'Liked podcasts',
                        style: TextStyle(color: const Color.fromARGB(255, 255, 245, 255),fontSize: 14),
                      ),
                      Row(
                        spacing: 16,
                        children: [
                                                   Container(
                            width: context.getWidth() * 0.126,
                            height: context.getHeight() * 0.0567,
                            child: Image.asset(
                              'assets/project_images/purple_explore_image.png',
                            ),
                          ),
                           Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Podcast Malone',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Claire Malone',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 196, 196, 196),
                                  fontSize: 12,
                                ),
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
                              'assets/project_images/blue_explore_image.png',
                            ),
                          ),
                        Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Podcast Antono',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Abumenyang',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 196, 196, 196),
                                  fontSize: 12,
                                ),
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
                                'Podcast Denny',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Denny Kulon',
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
                ),
              );
  }
}