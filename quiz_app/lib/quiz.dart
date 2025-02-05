import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen; // cast specific type

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  // [] displays a growable list but we can also present it by List.empty(growable: true)
  List<String> selectedAnswers = List.empty(growable: true);
  var activeScreen = "start-screen";
  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
      // activeScreen = QuestionsScreen();
    });
  }

  void chosenAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = List.empty(growable: true);
        activeScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(onSelectAnswer: chosenAnswer);
    }
    if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
