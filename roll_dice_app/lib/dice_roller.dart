import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img; // Import the image package

final _random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  dynamic diceImagePath = "";

  dynamic diceRoll = _random.nextInt(6) + 1;
  img.Image? _greyscaleImage; // Holds the greyscale version of the dice image

  @override
  void initState() {
    super.initState();
    dictateDiceState();
    _loadAndConvertImage(diceImagePath); // Load the initial greyscale dice
  }

  void dictateDiceState() {
    if (diceImagePath.isEmpty) {
      diceImagePath = 'assets/images/dice_images/dice-default-state.png';
    } else {
      diceImagePath = 'assets/images/dice_images/dice-$diceRoll.png';
    }
  }

  void rollDice() {
    setState(() {
      diceRoll = _random.nextInt(6) + 1; // random value from 1 to 6
      // print(diceRoll >= 5 ? "High Roll" : "Better Luck Next Time");
    });

    // Load and convert the new dice image to greyscale
    dictateDiceState();
    _loadAndConvertImage(diceImagePath);
  }

  // Load and convert the dice image to greyscale
  Future<void> _loadAndConvertImage(String diceImage) async {
    // Load image from assets
    final ByteData data = await rootBundle.load(diceImage);
    final List<int> bytes = data.buffer.asUint8List();

    // Decode the image and convert to greyscale
    final img.Image image = img.decodeImage(bytes)!;
    final img.Image grayscaleImage = img.grayscale(image);

    // Update the state with the new greyscale image
    setState(() {
      _greyscaleImage = grayscaleImage;
    });
  }

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: Future.delayed(
                    Duration(seconds: 2)), // Add a delay of 2 seconds
                builder: (context, snapshot) {
                  return snapshot.connectionState == ConnectionState.waiting
                      ? const CircularProgressIndicator()
                      : _greyscaleImage == null
                          ? const CircularProgressIndicator()
                          : Image.memory(
                              Uint8List.fromList(img.encodePng(
                                  _greyscaleImage!)), // Greyscale image
                              width: 200.0,
                            );
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: Text(
            "Roll Dice",
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
