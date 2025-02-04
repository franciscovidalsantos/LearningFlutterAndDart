import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionText,
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // spreading
            ...currentQuestion.getShuffledOptions().map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            })

            // AnswerButton(
            //   answerText: currentQuestion.options[0],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   // we can change the order since they are named arguments and required to be filled by their name
            //   onTap: () {},
            //   answerText: currentQuestion.options[1],
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.options[2],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.options[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
