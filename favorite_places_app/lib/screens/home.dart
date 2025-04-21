import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/providers/user_places.dart';
import 'package:favorite_places_app/screens/add_place.dart';
import 'package:favorite_places_app/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _navigateToAddPlace(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => AddPlaceScreen()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _navigateToAddPlace(context),
          ),
        ],
      ),
      body: PlacesList(places: userPlaces),
    );
  }
}
