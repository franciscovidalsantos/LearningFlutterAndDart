import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The questions..",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 30),
          AnswerButton(
            answerText: "Answer 1",
            onTap: () {},
          ),
          AnswerButton(
            // we can change the order since they are named arguments and required to be filled by their name
            onTap: () {},
            answerText: "Answer 2",
          ),
          AnswerButton(
            answerText: "Answer 3",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "Answer 4",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
