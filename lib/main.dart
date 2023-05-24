import 'package:expense_app/widgets/user_transaction.dart';

import 'package:flutter/material.dart';

void main() => runApp(const ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Expense Planner")),
        body: const SingleChildScrollView(child: UserTransaction()),
      ),
    );
  }
}
