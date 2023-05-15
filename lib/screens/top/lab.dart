import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

class Lab extends StatelessWidget {
  double x, y;
  String currentMap;

  Lab({required this.x, required this.y, required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if (currentMap == 'lab') {
      return Container(
        alignment: Alignment(x, y),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'lib/images/maps/labtest.png',
              width: MediaQuery.of(context).size.width * 0.99,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 0,
              bottom: 200,
              child: Image.asset(
                'lib/images/maps/oak2.png',
                scale: 0.9,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
