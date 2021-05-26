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
    var _shape = const CircleBorder(
      side: BorderSide(
        color: Colors.black,
        width: 1,
        style: BorderStyle.solid,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ElevatedButton(
              child: Text(_numbers[_rand.nextInt(74)].toString()),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250.0, 250.0),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: _shape,
              ),
              onPressed: () {
                print("temp");
              },
            ),
          ),
          Divider(),
          Text("temp"),
        ],
      ),
    );
  }
}
