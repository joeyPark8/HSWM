import 'package:flutter/material.dart';
import 'package:how_same_with_me/question.dart';

class ResultPage extends StatefulWidget {
  List<Question> list;

  ResultPage({Key? key, required this.list});

  @override
  State<StatefulWidget> createState() {
    return _ResultPage(list: list);
  }
}

class _ResultPage extends State<ResultPage> {
  List<Question> list;
  var userAnswers = [];

  num score = 0;

  _ResultPage({Key? key, required this.list});

  @override
  Widget build(BuildContext context) {
    Object? args = ModalRoute.of(context)!.settings.arguments;
    List answers;

    if (args is List) {
      answers = args;

      var count = 0;
      for (var i in answers) {
        score += list[count].answer[i];

        count += 1;
      }
    }

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('$score'),
              RaisedButton(
                child: Text(
                  '홈으로 돌아가기',
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
