class Question {
  String content = '';
  Map answer = <int, int>{};

  late List<String> examples;

  Question({
    required this.content,
    required this.answer,
    required this.examples
  });

}