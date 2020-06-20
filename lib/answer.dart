import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  Answer({Key key, this.title, this.isCorrect, this.onChangeAnswer}) : super(key: key);

  blum() {
    final player = AudioCache();
    player.play('blum3.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        blum();
        onChangeAnswer(isCorrect);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(1.0, 1.0),
              ),
            ],
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(colors: [
              Colors.green[400],
              Colors.green[300],
              Colors.green[200],
            ])),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 5.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
