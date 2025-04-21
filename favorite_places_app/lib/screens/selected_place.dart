import 'package:favorite_places_app/models/place.dart';
import 'package:flutter/material.dart';

class SelectedPlaceScreen extends StatefulWidget {
  const SelectedPlaceScreen({super.key, required this.place});
  final Place place;
  @override
  State<SelectedPlaceScreen> createState() => _SelectedPlaceScreenState();
}

class _SelectedPlaceScreenState extends State<SelectedPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.place.title)),
      body: Center(
        child: Text(
          'Details of the selected place will appear here.',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
