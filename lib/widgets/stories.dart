import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model_circular_button.dart';
import 'package:faker/faker.dart';

import 'circular_button.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final stories = <ModelCircularButton>[];

    for (int i = 0; i < 10; i++) {
      final stori = ModelCircularButton(
        imgUrl: faker.image.image(random: true),
        newStory: i == 0 ? true : false,
        border: i != 0 ? true : false,
        sizeBorder: 100,
        sizeImg: 80,
      );
      stories.add(stori);
    }

    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Column(
            children: [
              CircularButton(
                story: stories[index],
              ),
              const SizedBox(height: 5),
              Text(index != 0 ? faker.person.firstName() : 'Tu historia'),
            ],
          );
        },
        itemCount: stories.length,
      ),
    );
  }
}
