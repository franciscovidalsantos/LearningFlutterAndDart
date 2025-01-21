import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/my_images/background.jpg';

  void rollDice() {
    setState(() {
      activeDiceImage =
          'assets/images/dice_images/dice-${Random().nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200.0,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: Text(
            "Roll Dice",
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
