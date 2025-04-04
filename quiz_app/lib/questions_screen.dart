import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/styles/my_styles.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectAnswer, super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestions(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      // if (currentQuestionIndex == questions.length) {
      //   return;
      // }
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

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
              style: MyTextStyles.questionsHeader,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 30),
            // spreading
            ...currentQuestion.shuffledOptions.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestions(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
