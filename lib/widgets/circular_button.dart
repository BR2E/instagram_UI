import 'package:flutter/material.dart';
import '../models/model_circular_button.dart';
import 'package:gradient_borders/gradient_borders.dart';

class CircularButton extends StatelessWidget {
  final ModelCircularButton story;

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
              if (story.border)
                Container(
                  width: story.sizeBorder,
                  height: story.sizeBorder,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xffFE0060),
                          Color(0xffFF8F00),
                        ],
                      ),
                      width: 3,
                    ),
                  ),
                ),
              if (story.border == false)
                Container(
                  width: story.sizeBorder,
                  height: story.sizeBorder,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.black),
                  ),
                ),
              Container(
                width: story.sizeImg,
                height: story.sizeImg,
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
                  bottom: 6,
                  right: 6,
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
        ],
      ),
    );
  }
}
