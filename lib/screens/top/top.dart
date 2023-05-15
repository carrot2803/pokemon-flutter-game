import 'package:flutter/material.dart';
import 'package:pokemon/character/battle.dart';
import 'package:pokemon/character/red.dart';
import 'package:pokemon/screens/top/lab.dart';
import 'package:pokemon/screens/top/town.dart';
import 'package:pokemon/variables.dart';
import 'chat.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Town(x: mapX, y: mapY, currentMap: currLocation),
            Lab(x: labMapX, y: labMapY, currentMap: currLocation),
            MyRed(pos: pPos, sCount: pCount, location: currLocation),
            Battle(isVisible: isGif),
            Chat(isVisible: isChat),
          ],
        ),
      ),
    );
  }
}
