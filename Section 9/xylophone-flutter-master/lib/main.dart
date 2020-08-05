import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  FlatButton playSound(int number, Color color) {
    return FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$number.wav');
      }, child: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              playSound(1, Colors.red),
              playSound(2, Colors.orange),
              playSound(3, Colors.yellow),
              playSound(4, Colors.green),
              playSound(5, Colors.teal),
              playSound(6, Colors.blue),
              playSound(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
