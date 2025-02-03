import 'package:flutter/material.dart';
import 'dart:math' as math;

class Page0 extends StatefulWidget {
  const Page0({super.key});

  @override
  State<Page0> createState() {
    return _Page0State();
  }
}

// Currently not being used
double degrees(double radians) => radians * (180 / math.pi);

class _Page0State extends State<Page0> {
  double scale = 1;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Slider that grows and rotates 90º each time"),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Transform.rotate(
                  alignment: Alignment.center,
                  angle: angle,
                  child: Transform.scale(
                    alignment: Alignment.center,
                    scale: scale,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Slider(
                // onChangeStart: (double startValue) {
                //   print('Started change at $startValue');
                // },
                // onChangeEnd: (double endValue) {
                //   print('Started change at $endValue');
                // },
                value: angle,
                min: 0,
                max: 360,
                divisions: 8,
                label: angle.toInt().toString() + "º",
                onChanged: (newValue) => setState(() {
                  angle = newValue;
                  scale = 1 + (newValue / 360); // TODO: fix angle
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
