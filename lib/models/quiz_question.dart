class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final Map<String, int> answers;

  List<String> get listOfAnswers {
    final list = answers.keys.toList();
    return list;
  }
}