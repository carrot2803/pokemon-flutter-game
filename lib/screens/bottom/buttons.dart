import 'package:flutter/material.dart';
import 'banner.dart';
import 'button.dart';

class Buttons extends StatelessWidget {
  final Function moveUp, moveDown, moveLeft, moveRight, pressedA, pressedB;

  const Buttons({
    super.key,
    required this.moveUp,
    required this.moveDown,
    required this.moveLeft,
    required this.moveRight,
    required this.pressedA,
    required this.pressedB,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          color: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Name(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 50, width: 50),
                            MyButton(text: '←', function: moveLeft),
                            const SizedBox(height: 50, width: 50),
                          ],
                        ),
                        Column(
                          children: [
                            MyButton(text: '↑', function: moveUp),
                            const SizedBox(height: 50, width: 50),
                            MyButton(text: '↓', function: moveDown),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 50, width: 50),
                            MyButton(text: '→', function: moveRight),
                            const SizedBox(height: 50, width: 50),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 50, width: 50),
                            MyButton(text: 'b', function: pressedB),
                          ],
                        ),
                        Column(
                          children: [
                            MyButton(text: 'a', function: pressedA),
                            const SizedBox(height: 50, width: 50),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const Text('CARROT', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      );
}
