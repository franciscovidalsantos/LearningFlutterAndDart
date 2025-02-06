import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

import '../styles/my_styles.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final correctAnswer = itemData["user_answer"] == itemData["correct_answer"];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              isCorrectAnswer: correctAnswer,
              questionIndex: itemData["question_index"] as int),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["question"] as String,
                  style: MyTextStyles.questionsListHeader,
                ),
                const SizedBox(height: 5),
                Text(
                  "Your answer: " + (itemData["user_answer"] as String),
                  style: MyTextStyles.userAnswerListText,
                ),
                Text(
                  "Correct answer: " + (itemData["correct_answer"] as String),
                  style: MyTextStyles.correctAnswerListText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
