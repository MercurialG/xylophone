import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({keyColor, int soundNumber}) {
    return Expanded(
      child: Card(
        child: FlatButton(
          color: keyColor,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(keyColor: Colors.red, soundNumber: 1),
                buildKey(keyColor: Colors.deepOrange, soundNumber: 2),
                buildKey(keyColor: Colors.yellow, soundNumber: 3),
                buildKey(keyColor: Colors.green.shade900, soundNumber: 4),
                buildKey(keyColor: Colors.lightBlueAccent, soundNumber: 5),
                buildKey(keyColor: Colors.blue.shade900, soundNumber: 6),
                buildKey(keyColor: Colors.deepPurple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
