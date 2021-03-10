import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey(Color pok, int i) {
    return Expanded(
      child: FlatButton(
        color: pok,
        onPressed: () {
          playsound(i);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text("PianoApp")),
        ),
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.orange, 3),
              buildKey(Colors.cyan, 4),
              buildKey(Colors.brown, 5),
              buildKey(Colors.deepPurpleAccent, 6),
              buildKey(Colors.yellow, 7),
            ],
          ),
        ),
      ),
    );
  }
}
