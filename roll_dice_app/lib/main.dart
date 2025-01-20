import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(),
          child: Center(
            child: Text(
              "Hello, World!",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
