import 'package:flutter/material.dart';
import 'dart:math' as math;

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    var _numbers = List<int>.generate(74, (i) => i + 1);
    var _rand = new math.Random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
      ),
      body: Center(
        child: Text(_numbers[_rand.nextInt(74)].toString()),
      ),
    );
  }
}
