import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = List.empty(growable: true);

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "questions_index": i,
        "question": questions[i].questionText,
        "correct_answer": questions[i].options[0],
        "user_answer": chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Answered x out of y questions correctly!"),
            const SizedBox(height: 30),
            const Text("List of answers and questions..."),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text("Restart Quiz!"))
          ],
        ),
      ),
    );
  }
}
