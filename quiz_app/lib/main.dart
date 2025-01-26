import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Enable screen to always stay on with Wakelock
  WakelockPlus.enable();

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.transparent,
          child: Column(
            children: [],
          ),
        ),
      ),
    ),
  );
}
