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

  Expanded buttons(Color color, var soundNumber) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          play(soundNumber);
        },
        color: color,
      ),
    );
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
          buttons(Colors.blue, 1),
          buttons(Colors.red, 2),
          buttons(Colors.green, 3),
          buttons(Colors.amberAccent, 4),
          buttons(Colors.pinkAccent, 5),
          buttons(Colors.purple, 6),
          buttons(Colors.deepOrangeAccent, 7),
        ],
      ),
    );
  }
}
