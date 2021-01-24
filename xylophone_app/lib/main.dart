import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  void play(var a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

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
                  play(1);
                },
                color: Colors.blue),
          ),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    play(2);
                  },
                  color: Colors.red)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    play(3);
                  },
                  color: Colors.green)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    play(4);
                  },
                  color: Colors.amberAccent)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    play(5);
                  },
                  color: Colors.pinkAccent)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    play(6);
                  },
                  color: Colors.purple)),
          Expanded(
              child: RaisedButton(
                  onPressed: () {
                    play(7);
                  },
                  color: Colors.deepOrangeAccent)),
        ],
      ),
    );
  }
}
