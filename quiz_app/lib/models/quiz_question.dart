class QuizQuestion {
  const QuizQuestion(this.questionText, this.options);

  final String questionText;
  final List<String> options;

  List<String> get shuffledOptions {
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}
