import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({Color color, int noteNum}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6.0),
        child: FlatButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.all(0),
          color: color,
          onPressed: () {
            playSound(noteNum);
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
        appBar: AppBar(
            backgroundColor: Colors.black26,
            title: Center(
              child: Text('Xylophone'),
            )),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, noteNum: 1),
              buildKey(color: Colors.orange, noteNum: 2),
              buildKey(color: Colors.yellow, noteNum: 3),
              buildKey(color: Colors.green, noteNum: 4),
              buildKey(color: Colors.teal, noteNum: 5),
              buildKey(color: Colors.blue, noteNum: 6),
              buildKey(color: Colors.purple, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
