import 'dart:ui';

import 'package:marvel_app/widgets/hero_card.dart';

const heroesData = [
  HeroData(name: 'Spider Man', image:"https://i.imgur.com/jWcD9gg.jpg", description: 'I am Spider Man'),
  HeroData(name: 'Captain America', image: 'https://avatars.dzeninfra.ru/get-zen_doc/3362051/pub_60013155cad2204d6ea26890_6001329b4e913f175878c941/scale_1200', description: 'I am Captain America'),
  HeroData(name: 'Deadpool', image: 'https://i.pinimg.com/736x/5a/29/df/5a29dfa287f409194e96b0a0984bd3ef.jpg', description: 'I am Deadpool'),
  HeroData(name: 'Doctor Strange', image: 'https://media.kg-portal.ru/production/doctorstrange/doctorstrange_5.jpg', description: 'I am Doctor Strange'),
  HeroData(name: 'Iron Man', image: 'https://proprikol.ru/wp-content/uploads/2020/01/zheleznyj-chelovek-kartinki-supergeroya-34.jpg', description: 'I am Iron Man'),
  HeroData(name: 'Thanos', image: 'https://kartinkin.net/uploads/posts/2022-03/1646225764_4-kartinkin-net-p-tanos-kartinki-6.jpg', description: 'I am Thanos'),
  HeroData(name: 'Thor', image: 'https://proprikol.ru/wp-content/uploads/2020/01/tor-kartinki-supergeroya-23.jpg', description: 'I am Thor')
];

class HeroData {
  final String name;
  final String image;
  final String description;

  const HeroData(
      {required this.name,
      required this.image,
      required this.description});
}
