
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'author.dart';
import 'home_pages.dart';
import 'question_answer.dart';

class Velcom extends StatefulWidget {
  Velcom({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _VelcomState();
}

class _VelcomState extends State<Velcom> {
  bool start = true;
  bool start2 = true;
  bool end = false;

  final QuestionData data = QuestionData();

  bool correctColer;
  bool resTup = false;
  bool author = false;

  void _returns() => setState(() {
        author = false;
      });

  velcom() {
    final player = AudioCache();
    player.play('bismillah.mp3');
    start = false;
  }

  @override
  Widget build(BuildContext context) {

    if (start) velcom();

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Center(child: Text('Проверь себя')),
        // ),
        body: Container(
          constraints: BoxConstraints
              .expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fon2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: author == false ? const EdgeInsets.only(top: 280.0) : const EdgeInsets.only(top: 29.0),

            child: Column(
              children: <Widget>[
                author == false ? GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
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
                              Colors.green,
                              Colors.green[400],
                              Colors.green[300],
                            ])),
                        child: Text(
                          ' Начать     ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
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
//                      SizedBox(height: 20.0),
                    ],
                  ),
                ) : SizedBox(height: 20.0),
                SizedBox(height: 20.0),
                author == false ? GestureDetector(
                  //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Author())),
                  onTap: () {
                    setState(() {
                      author = true;
                    });  
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
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
                              Colors.green,
                              Colors.green[400],
                              Colors.green[300],
                            ])),
                        child: Text(
                          'Об Авторе',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
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
                    ],
                  ),
                 ) : Author(onReturns: _returns), //GestureDetector(
              ],
            ),
          ),
        ),
      ),
    );
  }
}