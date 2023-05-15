import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

class Town extends StatelessWidget {
  double x, y;
  String currentMap;

  Town({required this.x, required this.y, required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if (currentMap == 'town') {
      return Container(
        alignment: Alignment(x, y),
        child: Image.asset(
          'lib/images/maps/town.png',
          width: MediaQuery.of(context).size.width * 0.99,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return Container();
    }
  }
}
