import 'package:flutter/material.dart';
import '../icons/icons_instagram_icons.dart';
import '../models/model_circular_button.dart';
import 'circular_button.dart';

class Publications extends StatelessWidget {
  const Publications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color(0xff333333).withOpacity(.3),
            width: 6,
          ),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 650,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images5.alphacoders.com/131/1316292.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    CircularButton(
                      story: ModelCircularButton(
                        imgUrl: '',
                        newStory: false,
                        border: true,
                        sizeBorder: 50,
                        sizeImg: 40,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Flexible(
                      child: Text(
                        'EfrfeEssssssEssssssEssssssEssssss',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Seguir',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 0),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Icon(
                  IconsInstagram.heart,
                  size: 30,
                ),
                SizedBox(width: 20),
                Icon(
                  IconsInstagram.ovalBlackSpeechBubble,
                  size: 30,
                ),
                SizedBox(width: 20),
                Icon(
                  IconsInstagram.paperAirplaneFlying,
                  size: 30,
                ),
                Spacer(),
                Icon(
                  IconsInstagram.bookmark,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '16k Me gusta',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'loremasdasdasdasdasdasdadasdasdasdasdasdsssssssss',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  'Ver los 111 comentarios',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
