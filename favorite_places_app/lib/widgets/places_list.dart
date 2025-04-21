import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/selected_place.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<Place> places;

  void _navigateToSelectedPlace(BuildContext context, Place selectedPlace) {
    print("Selected place: $selectedPlace");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SelectedPlaceScreen(place: selectedPlace),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          "No places were added yet.",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final widgetItem = Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: FileImage(places[index].image),
                ),
                title: Text(
                  places[index].title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                onTap: () => _navigateToSelectedPlace(context, places[index]),
              ),
              Divider(),
            ],
          );
          return widgetItem;
        },
      ),
    );
  }
}
