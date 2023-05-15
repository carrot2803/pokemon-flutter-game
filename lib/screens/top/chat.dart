import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final bool isVisible;

  const Chat({super.key, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.25,
        child: Visibility(
          visible: isVisible,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white, width: 2.0),
              ),
              child: const Text(
                'Let me show you a Pokémon battle',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
