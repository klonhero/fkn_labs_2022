import 'package:flutter/material.dart';
import '../widgets/HeroesPageView.dart';
import '../widgets/MarvelLogo.dart';
import '../widgets/UnderLogoText.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const MarvelLogo(),
            backgroundColor: Colors.transparent),
        backgroundColor: Colors.black,
        body: Column(children: const <Widget>[
          Expanded(flex: 1, child: UnderLogoText()),
          Expanded(flex: 10, child: HeroesPageView())
        ]));
  }
}