import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 30, left: 30, right: 30),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.purple),
              onPressed: () => {
                    addTx(titleController.text,
                        double.parse(amountController.text))
                  },
              child: const Text('Add Transaction'))
        ]),
      ),
    );
  }
}
