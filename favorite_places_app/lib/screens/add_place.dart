import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/home.dart';
import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  AddPlaceScreen({super.key, required this.placesList});
  final List<Place> placesList;
  String addedPlace = '';

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  // void _addNewPlaceToList(BuildContext context, List<String> placesList) {
  //   Navigator.of(
  //     context,
  //   ).pop(MaterialPageRoute(builder: (context) => HomeScreen()));
  // }
  final _titleController = TextEditingController();

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
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                final newPlace = Place(title: _titleController.text);
                if (newPlace.title.isNotEmpty) {
                  Navigator.of(context).pop(newPlace);
                }
                // widget.placesList.add(widget.addedPlace);

                // _addNewPlaceToList(context, widget.placesList);
              },
              icon: Icon(Icons.add),
              label: Text("Add Place"),
            ),
          ],
        ),
      ),
    );
  }
}
