import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    // the controller is not needed any more
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(labelText: "Title"),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Amount"),
          ),
          TextField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(labelText: "Date"),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Category"),
          ),
          ElevatedButton(
            onPressed: () {
              print(_titleController.text);
            },
            child: Text("Save Expense"),
          ),
        ],
      ),
    );
  }
}
