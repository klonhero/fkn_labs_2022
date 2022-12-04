import 'package:flutter/material.dart';
import '../api_interactions/heroes_download.dart';
import '../widgets/heroes_carousel_slider.dart';
import '../widgets/marvel_logo.dart';
import '../widgets/under_logo_text.dart';
import '../list_of_heroes.dart';

class MainPage extends StatelessWidget {
  final List<HeroData> heroesData;
  const MainPage({super.key, required this.heroesData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
            child: Column(children: <Widget>[
          const MarvelLogo(),
          const UnderLogoText(),
          Expanded(child: HeroesCarouselSlider(heroes: heroesData))
        ])));
  }
}
