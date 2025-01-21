import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  dynamic diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1; // random value from 1 to 6
      var testTernary = diceRoll >= 5 ? "High Roll" : "Better Luck Next Time";
      print(testTernary);
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/dice_images/dice-$diceRoll.png',
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
