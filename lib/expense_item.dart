import 'package:flutter/material.dart';
import 'Models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;
  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title,style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                // Text(
                //   '\₹${expense.amount.toStringAsExponential(2)}',
                // ),
                Text(
                  '₹${expense.amount}',
                ),
                const Spacer(),
                Row(
                  children: [
                     Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      expense.formateddate,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
