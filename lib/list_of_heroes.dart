import 'package:marvel_app/widgets/hero_card.dart';

const heroesData = [
  HeroData(name: 'Spider Man', asset: 'assets/spiderMan.jpg', description: 'I am Spider Man'),
  HeroData(name: 'Captain America', asset: 'assets/capAmerica.jpg', description: 'I am Captain America'),
  HeroData(name: 'Deadpool', asset: 'assets/deadpool.jpg', description: 'I am Deadpool'),
  HeroData(name: 'Doctor Strange', asset: 'assets/doctorStrange.jpg', description: 'I am Doctor Strange'),
  HeroData(name: 'Iron Man', asset: 'assets/ironman.jpg', description: 'I am Iron Man'),
  HeroData(name: 'Thanos', asset: 'assets/tanos.jpg', description: 'I am Thanos'),
  HeroData(name: 'Thor', asset: 'assets/tor.jpg', description: 'I am Thor')
];

class HeroData {
  final String name;
  final String asset;
  final String description;

  const HeroData(
      {required this.name,
      required this.asset,
      required this.description});
}
