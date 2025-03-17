import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDeatailsScreen extends StatefulWidget {
  const MealDeatailsScreen({super.key, required this.meal});
  final Meal meal;

  @override
  State<MealDeatailsScreen> createState() => _MealDeatailsState();
}

class _MealDeatailsState extends State<MealDeatailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Selected Meal')),
      body: Image.network(
        widget.meal.imageUrl,
        height: 300,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
