import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  var currentQuestionIndex = 0;
  answerQuestions() {
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
              style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // spreading
            ...currentQuestion.getShuffledOptions().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestions);
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
