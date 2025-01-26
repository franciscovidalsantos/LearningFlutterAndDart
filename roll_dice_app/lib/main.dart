import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_container.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  // enable screen to always stay on with Wakelock
  WakelockPlus.enable();

  // Is suggested making the main method async to ensure
  //that WakelockPlus.enable() completes before running the app.
  //However, if you prefer not to make main async,
  //you can still ensure that WakelockPlus.enable() is
  //called correctly by initializing the Flutter bindings first.

  runApp(
    MaterialApp(
      home: Scaffold(
        body: DiceContainer(),
      ),
    ),
  );
}
