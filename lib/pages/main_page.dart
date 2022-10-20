import 'package:flutter/material.dart';
import '../widgets/heroes_carousel_slider.dart';
import '../widgets/marvel_logo.dart';
import '../widgets/under_logo_text.dart';
import '../list_of_heroes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const MarvelLogo(),
            backgroundColor: Colors.transparent),
        backgroundColor: Colors.black87,
        body: Column(children: const <Widget>[
          Expanded(flex: 1, child: UnderLogoText()),
          Expanded(flex: 10, child: HeroesCarouselSlider(heroes: heroes))
        ]));
  }
}