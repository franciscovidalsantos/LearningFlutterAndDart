import 'package:flutter/material.dart';

// can also define the vars in the contructor //  const StyledText(String text, {super.key}): _text = text;
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  // since we're no longer defining the var in the constructor we no longer need String _text and can apply the same var name as the constructor

  // we can set it to final since it's not going to change
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      key: key,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
