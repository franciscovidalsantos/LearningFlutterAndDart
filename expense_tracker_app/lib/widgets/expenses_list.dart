import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    // ListView is scrollable by default
    // with a constructor .builder will only create if their about to be displayed
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        // identify a widget
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.50),
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
