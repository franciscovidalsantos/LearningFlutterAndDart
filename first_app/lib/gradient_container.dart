import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

// Alignment? startAlignment;
const startAlignment = Alignment.centerLeft;
const endAlignment = Alignment.centerRight;
// final, dynamic, var, const, double, bool..

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // Constructor for purple gradient can be used with GradientContainer.purple()
  const GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.deepPurple;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // begin: startAlignment = Alignment.centerLeft,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: Center(
        child: StyledText("Hello, World!"),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           // begin: startAlignment = Alignment.centerLeft,
//           end: endAlignment,
//           colors: colors,
//         ),
//       ),
//       child: Center(
//         child: StyledText("Hello, World!"),
//       ),
//     );
//   }
// }
