import 'package:flutter/material.dart';

import '../list_of_heroes.dart';
import 'const_styles.dart';
import 'hero_detail_screen.dart';

class HeroCard extends StatelessWidget {
  final HeroData data;

  const HeroCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.transparent,
        margin: const EdgeInsets.only(bottom: 30),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HeroDetailed(data: data);
              }));
            },
            child: SizedBox(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.network(
                        width: 400,
                        height: 1200,
                        data.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        data.name,
                        style: textStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
