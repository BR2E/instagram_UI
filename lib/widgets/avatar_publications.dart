import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class AvatarPublications extends StatelessWidget {
  final String imgAvatar;

  const AvatarPublications({super.key, required this.imgAvatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: const GradientBoxBorder(
          gradient: LinearGradient(colors: <Color>[
            Color(0xffFE0060),
            Color(0xffFF8F00),
          ]),
          width: 3,
        ),
        image: DecorationImage(image: NetworkImage(imgAvatar)),
      ),
    );
  }
}
