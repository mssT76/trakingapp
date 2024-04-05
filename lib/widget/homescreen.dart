import 'package:flutter/material.dart';
import 'package:trakingapp/widget/hero_card.dart';
import 'package:trakingapp/widget/transaction_card.dart';

import 'add_transcaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _dialoBuilder(BuildContext context){
     showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Addtransaction(),
          );
        },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ((){
        _dialoBuilder(context);
      }),
      child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Hello',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){
           }, icon: Icon(Icons.exit_to_app), color: Colors.white,)
        ],
      ),
      body: Column(
        children: [
          HeroCard(),
          TransactionCard(),
        ],
      ),
    );
  }
}

