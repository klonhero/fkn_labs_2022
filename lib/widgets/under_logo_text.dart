import 'package:flutter/material.dart';
import 'package:marvel_app/widgets/const_styles.dart';

class UnderLogoText extends StatelessWidget {
  const UnderLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.bottomCenter,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'Choose your hero',
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
