import 'package:expense_app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  ExpenseApp({super.key});

  final List<Transaction> transctions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 53.99,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Expense Planner")),
        body: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TextField(
                      decoration: InputDecoration(labelText: "Title"),
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Add Transactions",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
                children: (transctions).map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Text(
                        '\$${tx.amount.toString()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
