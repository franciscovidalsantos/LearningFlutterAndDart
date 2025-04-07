import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  GroceryList({super.key});
  final _groceryItems = groceryItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _groceryItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            color: _groceryItems[index].category.color,
            height: 28,
            width: 28,
          ),
          title: Text(_groceryItems[index].name),
          trailing: Text(_groceryItems[index].quantity.toString()),
        );
      },
    );
  }
}
