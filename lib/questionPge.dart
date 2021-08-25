import 'package:flutter/material.dart';
import 'package:how_same_with_me/question.dart';

class QuestionPage extends StatefulWidget {
  List<Question> list;

  QuestionPage({Key? key, required this.list});

  @override
  State<StatefulWidget> createState() {
    return _QuestionPage(list: list);
  }
}

class _QuestionPage extends State<QuestionPage> {
  List<Question> list;

  Object? val = -1;

  var questionNum = 0;

  var btnTxt = '다음';

  var userAnswers = [];

  _QuestionPage({Key? key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                '${questionNum + 1}. ' + list[questionNum].content,
                style: TextStyle(
                  fontSize: 30
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text(list[questionNum].examples[0]),
                    leading: Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(list[questionNum].examples[1]),
                    leading: Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(list[questionNum].examples[2]),
                    leading: Radio(
                      value: 3,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(list[questionNum].examples[3]),
                    leading: Radio(
                      value: 4,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(list[questionNum].examples[4]),
                    leading: Radio(
                      value: 5,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                  )
                ],
              ),
              RaisedButton(
                child: Text(
                  btnTxt,
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                onPressed: () {
                  if (questionNum == list.length - 1) {
                    userAnswers.add(val);

                    Navigator.of(context).pushReplacementNamed('/result', arguments: userAnswers);

                    return;
                  }
                  if (questionNum < list.length) {
                    if (val != -1) {
                      setState(() {
                        userAnswers.add(val);

                        val = -1;
                        questionNum += 1;

                        if (questionNum == list.length - 1) {
                          btnTxt = '결과 보기';
                        }
                      });
                    }
                  }
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
