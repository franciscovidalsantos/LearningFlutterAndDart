import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class DiceContainer extends StatelessWidget {
  const DiceContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/my_images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
