import 'dart:async';
import 'package:pokemon/variables.dart';

bool townMove(String direction, var townBorder, double x, double y) {
  double stepX = 0, stepY = 0;
  if (direction == 'left') {
    stepX = step;
    stepY = 0;
  } else if (direction == 'right') {
    stepX == step;
    stepY = 0;
  } else if (direction == 'up') {
    stepX = 0;
    stepY = step;
  } else if (direction == 'down') {
    stepX = 0;
    stepY = -step;
  }

  for (int i = 0; i < 91; i++) {
    if (townBorder[i][0] == x + stepX && townBorder[i][1] == y + stepY) {
      return false;
    }
  }
  return true;
}

bool labMove(String direction, var labBorder, double x, double y) {
  double stepX = 0, stepY = 0;
  if (direction == 'left') {
    stepX = step;
    stepY = 0;
  } else if (direction == 'right') {
    stepX == step;
    stepY = 0;
  } else if (direction == 'up') {
    stepX = 0;
    stepY = step;
  } else if (direction == 'down') {
    stepX = 0;
    stepY = -step;
  }

  for (int i = 0; i < 153; i++) {
    if (labBorder[i][0] == x + stepX && labBorder[i][1] == y + stepY) {
      return false;
    }
  }
  return true;
}

void moveDown() {
  pPos = 'down';
  if (currLocation == 'town' && townMove(pPos, townBorder, mapX, mapY)) {
    mapY -= step;
  }
  if (currLocation == 'lab' && labMove(pPos, labBorder, labMapX, labMapY)) {
    labMapY -= step;
  }
  walk();

  if (double.parse((labMapX).toStringAsFixed(4)) == 0.0 &&
      double.parse((labMapY).toStringAsFixed(4)) < -90.0 &&
      currLocation == 'lab') {
    currLocation = 'town';
    mapX = 20.0;
    mapY = -50.0;
  }
}

void moveUp() {
  pPos = 'up';
  if (currLocation == 'town' && townMove(pPos, townBorder, mapX, mapY)) {
    mapY += step;
  }
  if (currLocation == 'lab' && labMove(pPos, labBorder, labMapX, labMapY)) {
    labMapY += step;
  }
  walk();
  if (double.parse((mapX).toStringAsFixed(4)) == 20.0 &&
      double.parse((mapY).toStringAsFixed(4)) == -40.0 &&
      currLocation == 'town') {
    currLocation = 'lab';
    labMapX = 0.0;
    labMapY = -90.0;
  }
}

void moveLeft() {
  pPos = 'left';
  if (currLocation == 'town' && townMove(pPos, townBorder, mapX, mapY)) {
    mapX += step;
  }
  if (currLocation == 'lab' && labMove(pPos, labBorder, labMapX, labMapY)) {
    labMapX += step;
  }
  walk();
}

void moveRight() {
  pPos = 'right';
  if (currLocation == 'town' && townMove(pPos, townBorder, mapX, mapY)) {
    mapX -= step;
  }
  if (currLocation == 'lab' && labMove(pPos, labBorder, labMapX, labMapY)) {
    labMapX -= step;
  }
  walk();
}

void pressedA() {
  if (double.parse((labMapX).toStringAsFixed(4)) == 0.0 &&
      double.parse((labMapY).toStringAsFixed(4)) > 30.0 &&
      currLocation == 'lab') {
    convo();
  }
}

void pressedB() {
  isChat = false;
  isGif = false;
}

void convo() {
  isChat = true;
  Timer(const Duration(seconds: 1), () {
    isChat = false;
    battle();
  });
}

void battle() {
  isGif = true;
  Timer(const Duration(seconds: 20), () {
    isGif = false;
  });
}

void walk() {
  Timer.periodic(const Duration(milliseconds: 50), (timer) {
    // print('x: $labMapX y: $labMapY');
    pCount++;
    if (pCount == 4) {
      pCount = 0;
      timer.cancel();
    }
  });
}
