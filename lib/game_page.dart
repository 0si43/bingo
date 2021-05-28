import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:async';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late List<int> _numbers;
  late List<int> _saved;
  var _rand = new math.Random();
  late int _index;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _numbers = List<int>.generate(74, (i) => i + 1);
    _saved = [];
    Timer.periodic(const Duration(milliseconds: 200), _change);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _change(Timer timer) {
    _timer = timer;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _index = _rand.nextInt(_numbers.length);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child:
                NumberRouletteButton(_numbers[_index].toString(), _tapAction),
          ),
          Divider(),
          _buildRow(1, 15),
          _buildRow(16, 30),
          _buildRow(31, 45),
          _buildRow(46, 60),
          _buildRow(61, 75),
        ],
      ),
    );
  }

  void _tapAction() {
    setState(() {
      var _value = _numbers.removeAt(_index);
      _saved.add(_value);
    });
  }

  Widget _buildRow(int start, int end) {
    var _filtered =
        _saved.where((element) => start <= element && element <= end).toList();
    _filtered.sort();
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _filtered.map((e) => Text(e.toString())).toList());
  }
}

class NumberRouletteButton extends StatelessWidget {
  final String _number;
  final VoidCallback _callback;
  NumberRouletteButton(this._number, this._callback);
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
        _callback();
      },
    );
  }
}
