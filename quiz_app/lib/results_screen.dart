import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';
import 'package:quiz_app/styles/my_styles.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = List.empty(growable: true);

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].questionText,
          "correct_answer": questions[i].options[0],
          "user_answer": chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    var summaryData = getSummaryData();
    var numTotalQuestions = questions.length;
    var numCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Answered out $numCorrectQuestions of $numTotalQuestions questions correctly!",
              style: MyTextStyles.questionsHeader,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            MyOutlinedButton(
                onPressed: onRestart,
                buttonText: "Restart Quiz!",
                buttonIcon: Icons.handshake),
          ],
        ),
      ),
    );
  }
}
