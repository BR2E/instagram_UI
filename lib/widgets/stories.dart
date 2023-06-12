import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model_stories.dart';
import 'package:faker/faker.dart';

import 'circular_button_story.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final stories = <ModelStories>[];

    for (int i = 0; i < 10; i++) {
      final stori = ModelStories(
        imgUrl: faker.image.image(random: true),
        newStory: i == 0 ? true : false,
        userName: i == 0 ? 'Tu historia' : faker.person.firstName(),
      );
      stories.add(stori);
    }

    return Container(
      height: 130,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return CircularButton(
            story: stories[index],
          );
        },
        itemCount: stories.length,
      ),
    );
  }
}
