import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,

        // top of the page
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.blueGrey[600],
        ),

        // body of the page
        body: Container(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
            maxWidth: double.infinity,
          ),
          padding: EdgeInsets.all(50),
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 175,
              maxWidth: 175,
            ),
            color: Colors.green,
            alignment: Alignment.center,
            child: Text(
              "Hello, World!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.purpleAccent,
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () => (),
          hoverColor: Colors.green,
          splashColor: Colors.red,
          enableFeedback: false,
        ),

        // bottom of the page
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              tooltip: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
          backgroundColor: Colors.cyan,
        ),
      ),
    ),
  );
}
