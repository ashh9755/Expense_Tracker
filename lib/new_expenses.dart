import 'package:flutter/material.dart';
import 'Models/expense.dart';
class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpense});

  final void Function(Expense expense) onAddExpense;
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // var enteredtitle = '';
  // void _savetitleinput(String inputvalue) {
  //   enteredtitle = inputvalue;
  // }
  final _titlecontroller = TextEditingController();
  final _amountcontroller = TextEditingController();
  DateTime? _selecteddate;
   Category _selectedCategory = Category.leisure;

  void _presentdatepicker() async
  {
    final now = DateTime.now();
    final firstdate = DateTime(now.year-1,now.month,now.day);
     final pickeddate =  await showDatePicker(context: context, initialDate: now, firstDate: firstdate, lastDate: now);
     setState(() {
       _selecteddate = pickeddate;
     });
     
  }
   void _submitExpenseData() {
    final enteredAmount = double.tryParse(_amountcontroller
        .text); // tryParse('Hello') => null, tryParse('1.12') => 1.12
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (_titlecontroller.text.trim().isEmpty ||
        amountIsInvalid ||
        _selecteddate == null) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid input'),
          content: const Text(
              'Please make sure a valid title, amount, date and category was entered.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text('Okay'),
            ),
          ],
        ),
      );
      return;
    }

     widget.onAddExpense(
      Expense(
        title: _titlecontroller.text,
        amount: enteredAmount,
        dateTime: _selecteddate!,
        category: _selectedCategory,
      ),
    );
    Navigator.pop(context);
  }
  @override
  void dispose() {
    _titlecontroller.dispose();
    _amountcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,48,16,16),
      child: Column(
        children: [
          TextField(
            controller: _titlecontroller,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text("Title"),
            ),
          ),
          Row(children: [ Expanded(child:TextField(
            controller: _amountcontroller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '₹ ',
              label: Text("Amount"),
            ),
          ),),
          const SizedBox(width: 16,),
          Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center, children: [ Text(_selecteddate == null ? 'No Date Selected' : formatter.format(_selecteddate!),),
            IconButton(onPressed: _presentdatepicker, icon: const Icon(Icons.calendar_month),),],),),

          ],),
          
          const SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(
                          category.name.toUpperCase(),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
               ElevatedButton(
                onPressed: _submitExpenseData,
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
