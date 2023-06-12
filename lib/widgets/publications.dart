import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../icons/icons_instagram_icons.dart';
import '../models/model_circular_button.dart';
import '../models/model_publications.dart';
import 'circular_button.dart';

class Publications extends StatelessWidget {
  final ModelPublications dataPublication;

  const Publications({
    super.key,
    required this.dataPublication,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color(0xff333333).withOpacity(.3),
            width: 6,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 650,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(dataPublication.imgPublicationUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularButton(
                    story: ModelCircularButton(
                      imgUrl: dataPublication.imgPublicationUrl,
                      newStory: false,
                      border: true,
                      sizeBorder: 50,
                      sizeImg: 40,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      dataPublication.name,
                      style: const TextStyle(
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
                        fontSize: 12,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 1,
                    icon: const Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  ),
                ],
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
              children: [
                Text(
                  '${dataPublication.likes} Me gusta',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  dataPublication.description,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  'Ver los ${dataPublication.comments} comentarios',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  timeago.format(dataPublication.date),
                  style: const TextStyle(
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
