import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'progress_bar.dart';
import 'question_answer.dart';
import 'quiz.dart';
import 'result.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool start = true;
  bool start2 = true;
  bool end = false;

  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;
  bool correctColer;
  bool resTup = false;

  void _clearState() => setState(() {
        _countResult = 0;
        _questionIndex = 0;
  //      _icons = [];
        start2 = true;
        start = true;
        end = true;
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          resTup = true;
          // _icons.add(Icon(Icons.brightness_1, color: Colors.green));
   //       _icons.add(Icon(Icons.brightness_1, color: Colors.green));
          _countResult++;
          correctColer = true;
        } else {
   //       _icons.add(Icon(Icons.brightness_1, color: Colors.red));
          correctColer = false;
        }
        _questionIndex++;
      });

  velcom() {
    final player = AudioCache();
    player.play('blum3.mp3');
    start = false;
  }

  @override
  Widget build(BuildContext context) {
    if (!start) start2 = false;
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
          child: Column(
            children: <Widget>[
              SizedBox(height: 70.0),
              _questionIndex < data.question.length
                  ? ProgressBar(
                      end: false,
                      start: start2,
                      correctColer: correctColer,
                      count: _questionIndex,
                      total: data.question.length)
                  : ProgressBar(
                      end: true,
                      start: true,
                      correctColer: correctColer,
                      count: _questionIndex,
                      total: data.question.length),
              _questionIndex < data.question.length
                  ? Quiz(
                      index: _questionIndex,
                      questionData: data,
                      onChangeAnswer: _onChangeAnswer)
                  : Result(
                      count: _countResult,
                      total: data.question.length,
                      onClearState: _clearState,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
