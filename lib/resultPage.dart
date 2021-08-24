import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResultPage();
  }
}

class _ResultPage extends State<ResultPage> {
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
