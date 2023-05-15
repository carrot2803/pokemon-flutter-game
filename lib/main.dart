import 'package:flutter/material.dart';
import 'package:pokemon/screens/bottom/buttons.dart';
import 'package:pokemon/screens/bottom/btnfns.dart';
import 'package:pokemon/screens/top/top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: ''),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateState(void Function() callback) {
    setState(() {
      callback();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Top(), // ignore: prefer_const_constructors
          Buttons(
            moveUp: () => updateState(moveUp),
            moveDown: () => updateState(moveDown),
            moveLeft: () => updateState(moveLeft),
            moveRight: () => updateState(moveRight),
            pressedA: () => updateState(pressedA),
            pressedB: () => updateState(pressedB),
          ),
        ],
      ),
    );
  }
}
