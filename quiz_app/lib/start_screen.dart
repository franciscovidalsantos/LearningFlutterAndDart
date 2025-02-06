import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/styles/my_styles.dart';

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
              style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          // set space between buttons
          SizedBox(height: 40),
          //my outline button
          MyOutlinedButton(
            onNavigate: startQuiz,
            buttonText: "Start the quiz",
            buttonIcon: Icons.front_hand_rounded,
          ),
        ],
      ),
    );
  }
}
