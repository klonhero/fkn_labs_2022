import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'hero_card.dart';

class HeroesCarouselSlider extends StatelessWidget {
  final List<HeroCard> heroes;

  const HeroesCarouselSlider({super.key, required this.heroes});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            height: 500, enlargeCenterPage: true, enableInfiniteScroll: true),
        items: heroes);
  }
}
