import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: '202012311555',
        title: 'New shoes',
        amount: 20.99,
        date: DateTime.now()),
    Transaction(
        id: '202012311559',
        title: 'Weekly groceries',
        amount: 32.45,
        date: DateTime.now()),
  ];

  void _addNewTx({String txTitle, double txAmount}) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTx),
        TransactionList(_userTransaction),
      ],
    );
  }
}
