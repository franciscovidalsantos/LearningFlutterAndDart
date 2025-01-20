import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

// Alignment? startAlignment;
const startAlignment = Alignment.centerLeft;
const endAlignment = Alignment.centerRight;
// final, dynamic, var, const, double, bool..

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // begin: startAlignment = Alignment.centerLeft,
          end: endAlignment,
          colors: [Colors.blue, Colors.pink],
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
