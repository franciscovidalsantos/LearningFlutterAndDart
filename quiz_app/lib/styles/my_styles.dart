import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyles {
  static TextStyle get questionsHeader => GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get questionsListHeader => GoogleFonts.lato(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle get userAnswerListText => GoogleFonts.lato(
        fontSize: 13,
        color: Colors.white, //change
      );

  static TextStyle get correctAnswerListText => GoogleFonts.lato(
        fontSize: 13,
        color: Colors.white, // change
      );
}

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton(
      {super.key,
      required this.onNavigate,
      required this.buttonText,
      required this.buttonIcon});

  final void Function() onNavigate;
  final String buttonText;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onNavigate,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        overlayColor: const Color.fromARGB(255, 160, 252, 55),
        side: BorderSide(color: Colors.white),
      ),
      label: Text(buttonText),
      icon: Icon(
        buttonIcon,
        color: Colors.white,
      ),
    );
  }
}


// OutlinedButton.icon(
//             onPressed: () {
//               startQuiz();
//             },
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//               overlayColor: const Color.fromARGB(255, 160, 252, 55),
//               side: BorderSide(color: Colors.white),
//             ),
//             label: Text("Start the quiz"),
//             icon: Icon(
//               Icons.front_hand_rounded,
//               color: Colors.white,
//             ),
//           ),