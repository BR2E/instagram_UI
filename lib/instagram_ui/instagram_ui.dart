import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../icons/icons_instagram_icons.dart';
import '../models/model_publications.dart';
import '../widgets/publications.dart';
import '../widgets/stories.dart';

class InstagramUI extends StatelessWidget {
  const InstagramUI({super.key});

  @override
  Widget build(BuildContext context) {
    final firstImg = 'https://images5.alphacoders.com/131/1316292.jpeg';
    final faker = Faker();
    final publications = <ModelPublications>[];
    for (int i = 0; i < 15; i++) {
      final publication = ModelPublications(
        imgPublicationUrl: faker.image.image(
          keywords: ['people'],
          random: true,
        ),
        name: faker.person.firstName(),
        likes: faker.randomGenerator.integer(50000),
        description: faker.lorem.sentence(),
        comments: faker.randomGenerator.integer(50000),
        date: faker.date.dateTime(),
      );
      publications.add(publication);
    }
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
        children: [
          const Stories(),
          const SizedBox(height: 30),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Publications(
                dataPublication: publications[index],
              );
            },
            itemCount: publications.length,
          )
        ],
      ),
    );
  }
}
