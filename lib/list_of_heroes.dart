import 'package:marvel_app/widgets/hero_card.dart';

const heroesData = [
  HeroData(name: 'Spider Man', asset: 'assets/spiderMan.jpg'),
  HeroData(name: 'Capitan America', asset: 'assets/capAmerica.jpg'),
  HeroData(name: 'Deadpool', asset: 'assets/deadpool.jpg'),
  HeroData(name: 'Doctor Strange', asset: 'assets/doctorStrange.jpg'),
  HeroData(name: 'Iron Man', asset: 'assets/ironman.jpg'),
  HeroData(name: 'Thanos', asset: 'assets/tanos.jpg'),
  HeroData(name: 'Thor', asset: 'assets/tor.jpg')
];

class HeroData {
  final String name;
  final String asset;
  final String description;

  const HeroData(
      {required this.name,
      required this.asset,
      this.description = 'I\'m marvel\'s character'});
}
