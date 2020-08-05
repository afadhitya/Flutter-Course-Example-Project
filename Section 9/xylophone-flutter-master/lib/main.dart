import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int numberNote) {
    final player = AudioCache();
    player.play('note$numberNote.wav');
  }

  Expanded createXylophoneButton(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createXylophoneButton(1, Colors.red),
              createXylophoneButton(2, Colors.orange),
              createXylophoneButton(3, Colors.yellow),
              createXylophoneButton(4, Colors.green),
              createXylophoneButton(5, Colors.teal),
              createXylophoneButton(6, Colors.blue),
              createXylophoneButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
