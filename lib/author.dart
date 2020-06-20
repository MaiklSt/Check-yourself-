import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

class Author extends StatelessWidget {
  final Function onReturns;

  Author({Key key, this.onReturns,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    player.play('blum3.mp3');

    return Container(
      padding: const EdgeInsets.only(top: 60.0, bottom: 60.0),
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
            Colors.green[200],
          ])),
      child: Column(
        children: <Widget>[
          Container(
            width: 200.0,
            height: 200.0,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('images/author.png'),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            child: Text(
              'MaiklSt',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red[100],
                fontSize: 35.0,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Divider(color: Colors.white),
          Text(
            'Android & Ios Developer',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          Divider(color: Colors.white),
          SizedBox(height: 40.0),
          RaisedButton(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 10.0, right: 30.0, left: 30.0),
            color: Colors.green[100],
            onPressed: () {
              final player = AudioCache();
              player.play('blum3.mp3');
              onReturns();
            },
            child: Text(
              'Назад',
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
