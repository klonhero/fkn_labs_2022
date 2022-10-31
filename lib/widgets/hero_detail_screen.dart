import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../list_of_heroes.dart';

class HeroDetailed extends StatelessWidget {
  final HeroData data;

  const HeroDetailed({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        fontSize: 25.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
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
        ]);

    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(children: <Widget>[
          Positioned.fill(
              child: Image(
            image: AssetImage(data.asset),
            fit: BoxFit.cover,
          )),
          Align(alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Column(
                      children: <Widget>[
                        Text(data.name, style: textStyle),
                        Text(data.description, style: textStyle)
                      ],
                    ),
                  ))),
          Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(CupertinoIcons.arrow_left,
                          size: 60.0,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                // bottomLeft
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black87),
                            Shadow(
                                // bottomRight
                                offset: Offset(1.5, -1.5),
                                color: Colors.black87),
                            Shadow(
                                // topRight
                                offset: Offset(1.5, 1.5),
                                color: Colors.black87),
                            Shadow(
                                // topLeft
                                offset: Offset(-1.5, 1.5),
                                color: Colors.black87),
                          ]))))
        ]));
  }
}
