import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  final String text;
  final String asset;

  const HeroCard({super.key, required this.text, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                  image: AssetImage(asset),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(text,
                        style: const TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ])),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
