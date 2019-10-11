import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void createAudioCache({int number}) {
    AudioCache player = new AudioCache();
    player.play("note$number.wav");
  }

  Expanded buildKey({Color withColor, int audioNumber, String noteSymbol}) {
    return Expanded(
      child: FlatButton(
        textColor: Colors.white,
        child: Text(
          noteSymbol,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        color: withColor,
        onPressed: () {
          createAudioCache(number: audioNumber);
        },
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
              buildKey(
                  withColor: Colors.blue, audioNumber: 1, noteSymbol: "Do"),
              buildKey(
                  withColor: Colors.brown, audioNumber: 2, noteSymbol: "Re"),
              buildKey(
                  withColor: Colors.cyan, audioNumber: 3, noteSymbol: "Mi"),
              buildKey(
                  withColor: Colors.deepOrange,
                  audioNumber: 4,
                  noteSymbol: "Fa"),
              buildKey(
                  withColor: Colors.yellow, audioNumber: 5, noteSymbol: "Sol"),
              buildKey(
                  withColor: Colors.white10, audioNumber: 6, noteSymbol: "La"),
              buildKey(
                  withColor: Colors.deepPurple,
                  audioNumber: 7,
                  noteSymbol: "Si")
            ],
          ),
        ),
      ),
    );
  }
}
