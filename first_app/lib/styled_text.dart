import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(context) {
    return Text(
      "Hello, World!",
      key: key,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
