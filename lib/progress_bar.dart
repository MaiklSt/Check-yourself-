import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  final count;
  final total;

  final correctColer;
  final start;
  final end;

  ProgressBar({Key key, this.count, this.total, this.correctColer, this.start, this.end}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          SizedBox(height: 20.0),
          start == true
              ? Text(
                  end == false ? 'Начали' : 'Конец',
                  style: TextStyle(
                    color: Colors.green[100],
                    fontSize: 25.0,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                )
              : Text(
                  correctColer == true ? 'Верно' : 'Не верно',
                  style: TextStyle(
                    color:
                        correctColer == true ? Colors.green[400] : Colors.red,
                    fontSize: 25.0,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
