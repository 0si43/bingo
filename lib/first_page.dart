import 'package:flutter/material.dart';
import 'package:bingo/game_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ビンゴを始める"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(IconData(0xe448, fontFamily: 'MaterialIcons')),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GamePage()),
            );
          },
          iconSize: 100.0,
        ),
      ),
    );
  }
}
