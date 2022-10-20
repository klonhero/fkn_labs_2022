import 'package:flutter/material.dart';

class UnderLogoText extends StatelessWidget {
  const UnderLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
        fit: BoxFit.scaleDown,
        child: Align(
            alignment: Alignment.center,
            child: Text(
              'Choose your hero',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )));
  }
}