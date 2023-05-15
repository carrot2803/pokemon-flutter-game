import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'G A M E B O Y',
          style: (TextStyle(color: Colors.white, fontSize: 18)),
        ),
        Text(
          '\t\u2665\t', // heart
          style: (TextStyle(color: Colors.red, fontSize: 20)),
        ),
        Text(
          'C A R R O T', // heart
          style: (TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ],
    );
  }
}
