import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItems extends StatelessWidget {
  final String title;
  final double amount;
  final DateTime date;
  TransactionItems({this.title, this.amount, this.date});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2)),
            padding: EdgeInsets.all(10),
            child: Text('\$${this.amount}',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Text(
                  this.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
                Container(
                    child: Text(
                  DateFormat.yMMMd().format(this.date),
                  style: TextStyle(color: Colors.grey),
                )),
              ])
        ],
      ),
    );
  }
}
