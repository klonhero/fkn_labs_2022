import 'package:marvel_app/widgets/hero_card.dart';

const heroesData = [
  HeroData(text: 'Spider Man', asset: 'assets/spiderMan.jpg'),
  HeroData(text: 'Capitan America', asset: 'assets/capAmerica.jpg'),
  HeroData(text: 'Deadpool', asset: 'assets/deadpool.jpg'),
  HeroData(text: 'Doctor Strange', asset: 'assets/doctorStrange.jpg'),
  HeroData(text: 'Iron Man', asset: 'assets/ironman.jpg'),
  HeroData(text: 'Thanos', asset: 'assets/tanos.jpg'),
  HeroData(text: 'Thor', asset: 'assets/tor.jpg')
];

class HeroData {
  final String text;
  final String asset;

  const HeroData({required this.text, required this.asset});
}