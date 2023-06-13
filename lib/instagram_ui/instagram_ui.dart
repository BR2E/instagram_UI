import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../icons/icons_instagram_icons.dart';
import '../models/model_publications.dart';
import '../widgets/publications.dart';
import '../widgets/stories.dart';

class InstagramUI extends StatelessWidget {
  const InstagramUI({super.key});

  @override
  Widget build(BuildContext context) {
    const firstImg = 'https://images5.alphacoders.com/131/1316292.jpeg';
    final faker = Faker();
    final publications = <ModelPublications>[];
    for (int i = 0; i < 15; i++) {
      final publication = ModelPublications(
        imgPublicationUrl: i != 0
            ? faker.image.image(
                keywords: ['people'],
                random: true,
              )
            : firstImg,
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            'assets/icons/instagramLogo.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            fit: BoxFit.cover,
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
          const SizedBox(height: 10),
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
