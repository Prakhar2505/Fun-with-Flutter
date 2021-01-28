import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int k = 0;
  int score = 0;
  List questions = [
    'Amartya Sen was awarded the Nobel prize for his contribution to Welfare Economics.',
    'The Headquarters of the Southern Naval Command of the India Navy is located at Thiruvananthapuram.',
    'William Hewlett and David Packard set up a small company called apple.',
    'Earth Rotation is also called annual motion of the earth?',
    'Sachin Tendulkar has not played a single International T20 match for India.',
    'There are 4 sessions of the Parliament each year: Spring, Summer, Autumn and Winter.',
    'The National Security Guards are also known as Black Cat Commandos due to their uniforms.',
    'The Indian Penal Code came into operation on 1st January, 1862.',
    'The Rajya Sabha can have a maximum of 552 members.',
    'Kuala Lumpur hosted the Commonwealth Game in 2010?'
  ];
  List answers = [
    'True',
    'False',
    'False',
    'False',
    'False',
    'False',
    'True',
    'True',
    'False',
    'False'
  ];
  List<Icon> scoreKeeper = [];

  Text display() {
    return Text(
      questions[k],
      style: TextStyle(fontSize: 25.0),
    );
  }

  Column mainBox() {
    if (k < 10) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(child: display()),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              compute('True');
            },
            child: Text(
              'True',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              compute('False');
            },
            child: Text(
              'False',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
          ),
          Row(children: scoreKeeper)
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(child: Text('ThankYou.',style: TextStyle(fontSize: 25,wordSpacing: 2.0),),),
          Center(child: Text('Your Score is $score .',style: TextStyle(fontSize: 25,wordSpacing: 2.0),),),
    ElevatedButton(
    onPressed: () { setState(() {
      k=0;
      score=0;
      scoreKeeper=[];
    });
    },
    child: Text(
    'Restart',
    style: TextStyle(color: Colors.white, fontSize: 17),
    ),),
        ],
      );
    }
  }

  void compute(var ans) {
    setState(() {
      if (answers[k] == ans) {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
        score = score + 1;
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      k = k + 1;
      // if(k==10){
      //   mainBox();
      // }
    });
  }

  void runnerClass() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(padding: EdgeInsets.all(15), child: mainBox()),
    );
  }
}
