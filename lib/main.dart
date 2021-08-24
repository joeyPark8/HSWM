import 'package:flutter/material.dart';
import 'package:how_same_with_me/questionPge.dart';
import 'package:how_same_with_me/resultPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HSWM',
      initialRoute: '/',
      routes: {
        '/': (context) => AppHomePage(),
        '/question': (context) => QuestionPage(),
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
                image: NetworkImage('https://raw.githubusercontent.com/joeyPark8/How-same-we-are/main/imageForSharing.jpg'),
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

