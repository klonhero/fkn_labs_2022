import 'package:flutter/material.dart';
import 'package:marvel_app/list_of_heroes.dart';
import 'package:marvel_app/pages/main_page.dart';

import 'api_interactions/heroes_download.dart';

void start() async {
  try {
    var request = MarvelHeroesHttpRequest();
    List<HeroData> heroData = emergencyHeroesData;
    var heroDataFuture = request.get();
    await heroDataFuture.then((value) => {
      heroData = value
    });
    // await Future.delayed(const Duration(seconds: 2), (){});
    runApp(MyApp(
      heroData: heroData,
    ));

  } catch (e) {
    throw Exception(e);
  }
}
void main() => start();

class MyApp extends StatelessWidget {
  final List<HeroData> heroData;
  const MyApp({super.key, required this.heroData});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel Scroll',
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: MainPage(heroesData: heroData)
    );
  }
}


