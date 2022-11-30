import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../list_of_heroes.dart';
import 'hero_card.dart';

class HeroesCarouselSlider extends StatelessWidget {
  final List<HeroData> heroes;

  const HeroesCarouselSlider({super.key, required this.heroes});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: heroes.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return HeroCard(data: heroes[itemIndex]);
        },
        options: CarouselOptions(
            height: 600, enlargeCenterPage: true, enableInfiniteScroll: true));
  }
}
