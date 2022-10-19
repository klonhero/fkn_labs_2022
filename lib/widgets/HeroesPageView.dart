import 'package:flutter/material.dart';

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
            Card(
                child: Text('1', style: textStyle)
            ),
            Card(
                child: Text('2', style: textStyle)
            ),
          ],
        )));
  }
}
