import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../icons/icons_instagram_icons.dart';
import '../widgets/publications.dart';
import '../widgets/stories.dart';

class InstagramUI extends StatelessWidget {
  const InstagramUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        leading: const Center(
          child: Text(
            'Instagram',
            style: TextStyle(
              fontFamily: 'Satisfy Regular',
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
          ),
        ),
        leadingWidth: 150,
        actions: const [
          Icon(
            IconsInstagram.heart,
          ),
          SizedBox(width: 15),
          Icon(
            IconsInstagram.paperAirplaneFlying,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: const [
          Stories(),
          SizedBox(height: 30),
          Publications(),
        ],
      ),
    );
  }
}
