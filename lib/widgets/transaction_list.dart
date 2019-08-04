import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;
  final Function _deleteTansaction;
  TransactionList(this._userTransactions, this._deleteTansaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: _userTransactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions found',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                final Transaction txt = _userTransactions[index];

                return Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${txt.amount.toStringAsFixed(2)}'),
                        ),
                      ),
                    ),
                    title: Text(
                      txt.title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(txt.date),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                      onPressed: () {
                        _deleteTansaction(txt.id);
                      },
                    ),
                  ),
                );

                // return Card(
                //     child: Row(
                //   children: <Widget>[
                //     Container(
                //       margin: EdgeInsets.symmetric(
                //         vertical: 10,
                //         horizontal: 15,
                //       ),
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //           color: Theme.of(context).primaryColor,
                //           width: 2,
                //         ),
                //       ),
                //       padding: EdgeInsets.all(10),
                //       child: Text(
                //         '\$${txt.amount.toStringAsFixed(2)}',
                //         style: TextStyle(
                //             color: Theme.of(context).primaryColor,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20),
                //       ),
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: <Widget>[
                //         Text(
                //           txt.title,
                //           style: Theme.of(context).textTheme.title,
                //         ),
                //         Text(
                //           DateFormat.yMMMd().format(txt.date),
                //           style: TextStyle(color: Colors.grey),
                //         )
                //       ],
                //     )
                //   ],
                // ));
              },
              itemCount: this._userTransactions.length),
    );
  }
}
