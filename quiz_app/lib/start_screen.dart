import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // decoration: BoxDecoration(color: Colors.red[500]),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),

          Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
            // decoration: BoxDecoration(color: Colors.purple[200]),
            child: Text(
              "Boring text message waya :(",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),

          Container(
            // decoration: BoxDecoration(color: Colors.pink),
            width: double.infinity, // stretch to screen size
            child: SizedBox(
              height: 40, // set space between buttons
            ),
          ),

          Container(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: Text("Start the quiz"),
            ),
          ),
        ],
      ),
    );
  }
}
