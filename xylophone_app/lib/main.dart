import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: RaisedButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                color: Colors.blue),
          ),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  color: Colors.red)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                  color: Colors.green)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                  color: Colors.amberAccent)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                  color: Colors.pinkAccent)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note6.wav');
                  },
                  color: Colors.purple)),
        ],
      ),
    );
  }
}
