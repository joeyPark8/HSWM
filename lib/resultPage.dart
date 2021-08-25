import 'package:flutter/material.dart';
import 'package:how_same_with_me/question.dart';

class ResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResultPage();
  }
}

class _ResultPage extends State<ResultPage> {
  List<Question> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('3rd Page'),
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
