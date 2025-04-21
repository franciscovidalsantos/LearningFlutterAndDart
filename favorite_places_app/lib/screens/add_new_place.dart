import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/home.dart';
import 'package:flutter/material.dart';

class AddNewPlaceScreen extends StatefulWidget {
  AddNewPlaceScreen({super.key, required this.placesList});
  final List<Place> placesList;
  String addedPlace = '';

  @override
  State<AddNewPlaceScreen> createState() => _AddNewPlaceScreenState();
}

class _AddNewPlaceScreenState extends State<AddNewPlaceScreen> {
  // void _addNewPlaceToList(BuildContext context, List<String> placesList) {
  //   Navigator.of(
  //     context,
  //   ).pop(MaterialPageRoute(builder: (context) => HomeScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Add new place')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(label: Text("Title")),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                final newPlace = Place(title: controller.text);
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
