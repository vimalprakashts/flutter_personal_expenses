// import 'package:flutter/material.dart';

// import '../models/transaction.dart';
// import 'new_transaction.dart';
// import 'transaction_list.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _UserTransactionsState createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   final List<Transaction> _userTransactions = [
//     Transaction(
//         id: 't1', amount: 200, date: DateTime.now(), title: "new shoes"),
//     Transaction(
//         id: 't2',
//         amount: 100,
//         date: DateTime.now(),
//         title: "weekly grocesries"),
//   ];

//   void _addNewTransaction(String title, double amount) {
//     final newTx = Transaction(
//         amount: amount,
//         title: title,
//         id: DateTime.now().toString(),
//         date: DateTime.now());

//     setState(() {
//       _userTransactions.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
//         TransactionList(_userTransactions),
//       ],
//     );
//   }
// }
