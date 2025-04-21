import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/providers/user_places.dart';
import 'package:favorite_places_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();

  void _addPlace() {
    final enteredText = _titleController.text;
    if (enteredText.isEmpty) {
      showDialog(context: context, builder: (context) => Text("data"));
      return;
    }

    ref.read(userPlacesProvider.notifier).addPlace(Place(title: enteredText));

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add new place')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(label: Text("Title")),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _addPlace,
              icon: Icon(Icons.add),
              label: Text("Add Place"),
            ),
          ],
        ),
      ),
    );
  }
}
