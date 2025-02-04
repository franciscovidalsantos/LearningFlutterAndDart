class QuizQuestion {
  const QuizQuestion(this.questionText, this.options);

  final String questionText;
  final List<String> options;

  List<String> getShuffledOptions() {
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}
