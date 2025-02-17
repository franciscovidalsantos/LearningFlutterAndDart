import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    // ListView is scrollable by default
    // with a constructor .builder will only create if their about to be displayed
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: ExpenseItem(expenses[index])),
    );
  }
}
