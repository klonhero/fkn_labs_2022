import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/hero_card.dart';

class HeroesPageView extends StatelessWidget {
  const HeroesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.black);
    final PageController controller = PageController();
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: PageView(
          controller: controller,
          children: <Widget>[
            const HeroCard(text: '123', asset: 'assets/marvel_logo.png'),
            Card(child: Text('2', style: textStyle)),
          ],
        )));
  }
}
