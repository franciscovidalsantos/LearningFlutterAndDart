import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/styles/my_styles.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: summaryData.map((data) {
            return Row(children: [
              Text(((data["question_index"] as int) + 1).toString()),
              Expanded(
                child: Column(children: [
                  Text(
                    data["question"] as String,
                    style: MyTextStyles.questionsListHeader,
                  ),
                  const SizedBox(height: 5),
                  Text(data["user_answer"] as String,
                      style: MyTextStyles.userAnswerListText),
                  Text(data["correct_answer"] as String,
                      style: MyTextStyles.correctAnswerListText),
                ]),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
