import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trakingapp/utils/icon_list.dart';

class TransactionCard extends StatelessWidget {
   TransactionCard({super.key});

   var appIcon = AppIcon();

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(15.0),
       child: Column(
        children: [
          Row(
            children: [
              Text(
                "Recent transaction",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: Colors.grey.withOpacity(0.09),
                        blurRadius: 10.0,
                        spreadRadius: 4.0
                      )
                    ]
                  ),
                  child: ListTile(
                    minVerticalPadding: 10,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    leading: Container(
                      width: 70,
                      height: 100,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green.withOpacity(0.2)
                        ),
                        child: Center(
                          child: FaIcon(
                            appIcon.getExpenseCategoryIcons('home')
                          ),
                        ),
                      ),
                    ),
                    title: Row(
                      children:[
                        Expanded(child: Text("Car rent oct")),
                        Text("100 VND", style: TextStyle(color:Colors.green)),
                      ],
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Balance", style: TextStyle(color: Colors.grey, fontSize:13)),
                            Spacer(),
                            Text("525", style: TextStyle(color: Colors.grey, fontSize:13)),
                          ],
                        ),
                        Text("25 oct 4:51", style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
           ),
     );
  }
}
