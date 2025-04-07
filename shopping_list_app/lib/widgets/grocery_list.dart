import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/dummy_items.dart';
import 'package:shopping_list_app/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final _groceryItems = groceryItems;

  void _addItem() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your List'),
        actions: [IconButton(onPressed: _addItem, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
