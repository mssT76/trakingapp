import 'package:flutter/material.dart';
import 'package:trakingapp/service/db.dart';
import 'package:trakingapp/utils/appvalidator.dart';

import '../utils/categories_dropdown.dart';

class Addtransaction extends StatefulWidget {
  const Addtransaction({super.key});

  @override
  State<Addtransaction> createState() => _AddtransactionState();
}



class _AddtransactionState extends State<Addtransaction> {
  var type = 'credit';
  var db = Db();

  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  var isLoader = false;
  var appValidator = Appvalidator();
  Future<void> _submitForm()async{
    if(_formKey.currentState!.validate()){
      setState(() {
        isLoader = true;
      });
      var data = {
        'remainingAmount ': 0,
        'totalCredit': 0,
        'totalDebit': 0,
      };


      setState(() {
        isLoader = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: appValidator.isEmpty,
                decoration: InputDecoration(
                  label: Text('title')
                ),
              ),
              TextFormField(
                validator: appValidator.isEmpty,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text('Amount')
                ),
              ),
              DropdownButtonFormField(
                  value: type,
                  items: [
                    DropdownMenuItem(child: Text('Credit'), value: 'credit',),
                    DropdownMenuItem(child: Text('Debit'), value: 'debit',),
                  ],
                  onChanged:(value){
                if(value != null){
                  setState(() {
                    type = value;
                  });
                }
              }),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                if(isLoader == false){
                  _submitForm();
                  }
                }, child:
                    isLoader ? Center(child: CircularProgressIndicator()):
                    Text("Add transaction"))
            ],
          )
      ),
    );
  }
}
