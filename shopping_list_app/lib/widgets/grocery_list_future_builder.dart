import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/categories.dart';
import 'package:shopping_list_app/models/grocery_item.dart';
import 'package:shopping_list_app/widgets/new_item.dart';
import 'package:http/http.dart' as http;

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];
  String? _error;
  late Future<List<GroceryItem>> _loadedItems;

  @override
  void initState() {
    super.initState();
    _loadedItems = _loadItems();
  }

  void _showErrorMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('An error occurred while deleting the item.'),
      ),
    );
  }

  Future<List<GroceryItem>> _loadItems() async {
    final url = Uri.https(
      "", // our firebase url
      "shopping-list.json",
    );

    final response = await http.get(url);

    if (response.statusCode >= 400) {
      throw Exception("Could not fetch data.");
    }
    if (response.body == "null") {
      return [];
    }

    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItems = [];
    for (final item in listData.entries) {
      final category =
          categories.entries
              .firstWhere(
                (categoryItem) =>
                    categoryItem.value.title == item.value["category"],
              )
              .value;
      loadedItems.add(
        GroceryItem(
          id: item.key,
          name: item.value["name"],
          quantity: item.value["quantity"],
          category: category,
        ),
      );
    }

    return loadedItems;
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(builder: (context) => const NewItem()),
    );
    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void _removeItem(GroceryItem item) async {
    int index = _groceryItems.indexOf(item);
    setState(() {
      _groceryItems.remove(item);
    });
    final url = Uri.https(
      "flutter-shopping-list-71035-default-rtdb.firebaseio.com",
      "shopping-list/${item.id}.json",
    );
    final response = await http.delete(url);
    // if the response is an error we add the item back to the list
    if (response.statusCode >= 400) {
      // show error message
      setState(() {
        _showErrorMessage();
        _groceryItems.insert(index, item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your List'),
        actions: [IconButton(onPressed: _addItem, icon: Icon(Icons.add))],
      ),
      body: FutureBuilder(
        future: _loadedItems,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (snapshot.data!.isEmpty) {
            return Center(child: Text("No items found."));
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(snapshot.data![index].id),
                onDismissed: (direction) {
                  _removeItem(snapshot.data![index]);
                },
                child: ListTile(
                  leading: Container(
                    color: snapshot.data![index].category.color,
                    height: 28,
                    width: 28,
                  ),
                  title: Text(snapshot.data![index].name),
                  trailing: Text(snapshot.data![index].quantity.toString()),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
