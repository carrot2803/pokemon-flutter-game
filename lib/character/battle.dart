import 'package:flutter/material.dart';

class Battle extends StatelessWidget {
  final bool isVisible;

  const Battle({super.key, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0),
      // heightFactor: 0.25,
      child: Visibility(
        visible: isVisible,
        child: Center(
          child: Image.asset(
            'lib/images/maps/battle.gif',
            height: MediaQuery.of(context).size.height * 2,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
