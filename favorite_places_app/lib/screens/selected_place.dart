import 'package:flutter/material.dart';

class SelectedPlaceScreen extends StatefulWidget {
  const SelectedPlaceScreen({super.key, required this.selectedPlace});
  final String selectedPlace;
  @override
  State<SelectedPlaceScreen> createState() => _SelectedPlaceScreenState();
}

class _SelectedPlaceScreenState extends State<SelectedPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.selectedPlace)),
      body: Center(
        child: Text(
          'Details of the selected place will appear here.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
