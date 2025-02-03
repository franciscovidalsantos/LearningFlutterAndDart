import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Enable screen to always stay on with Wakelock
  WakelockPlus.enable();

  runApp(Quiz());
}
