import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = "";
  void _saveTitleInput(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInput,
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
              print(_enteredTitle);
            },
            child: Text("Save Expense"),
          ),
        ],
      ),
    );
  }
}
