import 'package:expense_app/widgets/transaction_list.dart';
import 'package:expense_app/widgets/new_transaction.dart';
import 'package:expense_app/widgets/user_transaction.dart';

import './models/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Expense Planner")),
        body: const UserTransaction(),
      ),
    );
  }
}
