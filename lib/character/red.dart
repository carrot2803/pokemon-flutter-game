// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyRed extends StatelessWidget {
  final int sCount;
  final String pos, location;
  double height = 20;

  MyRed({
    required this.sCount,
    required this.pos,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    if (location == 'town') {
      height = 35;
    } else if (location == 'lab') {
      height = 40;
    } else if (location == 'battle' ||
        location == 'attack' ||
        location == 'bfinish') {
      height = 0;
    }

    return Container(
      alignment: const Alignment(0, 0),
      child: SizedBox(
        height: height,
        child: Image.asset(
          'lib/images/player/$pos$sCount.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
