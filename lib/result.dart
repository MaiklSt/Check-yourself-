import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = '';
    Widget image;

    if (0 <= count && count <= 7) {
      message = 'Слабенько';
      image = Image.asset('images/emotions/low.jpeg');
    } else if (8 <= count && count <= 14) {
      message = 'Средне';
      image = Image.asset('images/emotions/norm.png');
    } else {
      message = 'Красавчик';
      image = Image.asset('images/emotions/hight.jpg');
    }

    final player = AudioCache();
    player.play('blum.mp3');

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15.0,
              offset: Offset(2.0, 5.0),
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(colors: [
            Colors.green[400],
            Colors.green[300],
            Colors.green[200],
          ])),
      child: Column(
        children: <Widget>[
          Container(
            width: 120.0,
            height: 120.0,
            child: FittedBox(
              fit: BoxFit.contain,
              child: image,
            ),
          ),
          Container(
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
          Divider(color: Colors.white),
          Text(
            'Верно ответил на $count из $total',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Divider(color: Colors.white),
          
          RaisedButton(
            color: Colors.green[100],
            onPressed: onClearState,
            child: Text(
              'Попробовать сного?',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
