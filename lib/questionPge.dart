import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionPage();
  }
}

class _QuestionPage extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('2nd Page'),
              RaisedButton(
                child: Text(
                  '결과 확인하기',
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/result');
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
