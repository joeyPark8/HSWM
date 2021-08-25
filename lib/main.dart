import 'package:flutter/material.dart';
import 'package:how_same_with_me/question.dart';
import 'package:how_same_with_me/questionPge.dart';
import 'package:how_same_with_me/resultPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Question> list = [];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    list.add(
        Question(
            content: '내가 좋아하는 것은?',
            answer: {
              1: 0,
              2: 50,
              3: 0,
              4: 0,
              5: 0
            },
            examples: ['사탕','초콜릿','솜사탕','쿠키','빵']
        )
    );

    list.add(
        Question(
            content: '내가 좋아하는 것은?',
            answer: {
              1: 50,
              2: 0,
              3: 0,
              4: 0,
              5: 0
            },
            examples: ['유튜브','넷플릭스','왓챠','웨이브','티빙']
        )
    );

    return MaterialApp(
      title: 'HSWM',
      initialRoute: '/',
      routes: {
        '/': (context) => AppHomePage(),
        '/question': (context) => QuestionPage(list: list),
        '/result': (context) => ResultPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class AppHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppHomePage();
  }
}

class _AppHomePage extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: NetworkImage(
                  'https://raw.githubusercontent.com/joeyPark8/How-same-we-are/main/imageForSharing.jpg'
                ),
                width: 500,
              ),
              Card(
                child: Container(
                  height: 260,
                ),
              ),
              RaisedButton(
                child: Text(
                  '시작',
                  style: TextStyle(
                    fontSize: 25
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/question');
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

