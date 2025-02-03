import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // decoration: BoxDecoration(color: Colors.red[500]),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
            // decoration: BoxDecoration(color: Colors.purple[200]),
            child: Text(
              "Boring text message waya :(",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),

          // Container(
          //   // decoration: BoxDecoration(color: Colors.pink),
          //   width: double.infinity, // stretch to screen size
          //   child:
          SizedBox(
            height: 40, // set space between buttons
          ),
          // ),

          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              overlayColor: const Color.fromARGB(255, 160, 252, 55),
              side: BorderSide(color: Colors.white),
            ),
            label: Text("Start the quiz"),
            icon: Icon(
              Icons.front_hand_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
