import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() {
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  double _sliderValue = 0.0; // Initial value of the slider
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Slider Example'),
      // ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("data"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("data"),
                Text("data"),
              ],
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 10,
              divisions: 10,
              label: _sliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Slider value: $_sliderValue'),
          ],
        ),
      ),
    );
  }
}
