import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numberNote) {
    final player = AudioCache();
    player.play('note$numberNote.wav');
  }

  Expanded createXylophoneButton({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: null,
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
              createXylophoneButton(number: 1, color: Colors.red),
              createXylophoneButton(number: 2, color: Colors.orange),
              createXylophoneButton(number: 3, color: Colors.yellow),
              createXylophoneButton(number: 4, color: Colors.green),
              createXylophoneButton(number: 5, color: Colors.teal),
              createXylophoneButton(number: 6, color: Colors.blue),
              createXylophoneButton(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
