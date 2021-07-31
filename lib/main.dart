import 'package:flutter/material.dart';
import 'models/Transaction.dart';
import 'widgets/transaction_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Second App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transarctions = [
    Transaction(
        id: "t1", title: "អាហាពេលព្រឹក", amount: 0.99, date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "ទិញ Iphone 11 Pro Max",
        amount: 999.99,
        date: DateTime.now())
  ];
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Exspanse"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("CARTS!!"),
              elevation: 5,
            ),
          ),
          Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: "Title"),
                          controller: titleController,
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "Amount"),
                          controller: amountController,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.purple),
                          ),
                          onPressed: () {
                            print(titleController);
                            print(amountController);
                          },
                          child: Text(
                            'Add Transaction',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ]))),
          Column(
              children: transarctions.map((tx) {
            return TransactionItems(
                title: tx.title, amount: tx.amount, date: tx.date);
          }).toList())
        ],
      ),
    );
  }
}
