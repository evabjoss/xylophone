import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded createKey(
    int soundNum,
    Color color,
  ) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(color: color),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createKey(1, Colors.red),
              createKey(2, Colors.orange),
              createKey(3, Colors.yellow),
              createKey(4, Colors.green),
              createKey(5, Colors.blue),
              createKey(6, Colors.purple),
              createKey(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
