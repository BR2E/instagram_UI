import 'package:flutter/material.dart';
import '../models/model_stories.dart';

class CircularButton extends StatelessWidget {
  final ModelStories story;

  const CircularButton({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(story.imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (story.newStory)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                      border: Border.all(
                        width: 3,
                        color: Colors.black,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(height: 10),
          Text(story.userName),
        ],
      ),
    );
  }
}
