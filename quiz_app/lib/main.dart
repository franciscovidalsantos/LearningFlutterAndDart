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
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/quiz-logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.purple[200]),
              child: Text("daata"),
            )
          ],
        ),
        // body: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [Colors.yellow, Colors.green],
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight),
        //   ),
        //   child: Column(
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage('assets/images/quiz-logo.png'),
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),

        //       // Expanded(child: Text("Learn Flutter the fun way!"))
        //     ],
        //   ),
        // ),
      ),
    ),
  );
}
