import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  final numbers = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pick your category")),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (var i = 0; i <= numbers; i++)
            Center(
              child: Text(i.toString(), style: TextStyle(color: Colors.white)),
            ),
        ],
      ),
    );
  }
}
