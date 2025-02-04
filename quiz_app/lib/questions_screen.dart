import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The questions..",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text("Answer 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Answer 3"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Answer 4"),
          ),
        ],
      ),
    );
  }
}
