import 'package:flutter/material.dart';
import 'dart:math' as math;

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late List<int> _numbers;
  var _rand = new math.Random();

  @override
  void initState() {
    super.initState();
    _numbers = List<int>.generate(74, (i) => i + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: NumberRouletteButton(_numbers[_rand.nextInt(74)].toString()),
          ),
          Divider(),
          Text("temp"),
        ],
      ),
    );
  }
}

class NumberRouletteButton extends StatelessWidget {
  final String _number;
  NumberRouletteButton(this._number);
  Widget build(BuildContext context) {
    var _shape = const CircleBorder(
      side: BorderSide(
        color: Colors.black,
        width: 1,
        style: BorderStyle.solid,
      ),
    );

    return ElevatedButton(
      child: Text(
        _number,
        style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 10.0),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(250.0, 250.0),
        primary: Colors.white,
        onPrimary: Colors.black,
        shape: _shape,
      ),
      onPressed: () {
        print("temp");
      },
    );
  }
}
