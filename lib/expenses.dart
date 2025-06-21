import 'package:flutter/material.dart';
import 'package:xpensetracker/Models/expense.dart';
import 'package:xpensetracker/chart/chart.dart';
import 'package:xpensetracker/expenses_list.dart';
import 'package:xpensetracker/new_expenses.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredexpense = [
    Expense(
        title: 'Books',
        amount: 300,
        dateTime: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 500,
        dateTime: DateTime.now(),
        category: Category.leisure)
  ];
   
  void _openAddExpenseOverlay()
  {
    showModalBottomSheet(isScrollControlled: true,context: context, builder: (ctx) =>  NewExpense(onAddExpense: _addExpense));
  }
   void _addExpense(Expense expense) {
    setState(() {
      _registeredexpense.add(expense);
    });
  }
   void _removeExpense(Expense expense) {
    final expenseIndex = _registeredexpense.indexOf(expense);
    setState(() {
      _registeredexpense.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense deleted.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
             _registeredexpense.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }
  @override
  Widget build(context) {
    Widget maincontent = const Center(child: Text('No Expense Found. Start Adding!'),);
    if(_registeredexpense.isNotEmpty)
    {
      maincontent = ExpenseList(expenses: _registeredexpense, onRemoveExpense: _removeExpense,);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Batua"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add),),
        ],
      ),
      body: Column(
        children: [
          Chart(expenses: _registeredexpense),
          Expanded(
            child: maincontent
          ),
        ],
      ),
    );
  }
}
