import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/add_place.dart';
import 'package:favorite_places_app/screens/selected_place.dart';
import 'package:favorite_places_app/widgets/places_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Place> _placesList = [];

  void _navigateToAddNewPlace(BuildContext context) async {
    final newPlace = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddPlaceScreen(placesList: _placesList),
      ),
    );
    if (newPlace != null) {
      setState(() {
        _placesList.add(newPlace);
      });
    }
  }

  void _navigateToSelectedPlace(BuildContext context, String selectedPlace) {
    print("Selected place: $selectedPlace");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SelectedPlaceScreen(selectedPlace: selectedPlace),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        actions: [
          IconButton(
            onPressed: () => _navigateToAddNewPlace(context),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesList(places: _placesList),
    );
  }
}
