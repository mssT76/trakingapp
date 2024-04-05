import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app), color: Colors.white,)
        ],
      ),
      body: Text("Transaction"),
    );
  }
}
