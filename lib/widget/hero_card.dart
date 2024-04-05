import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total balance",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.2,
                      fontWeight: FontWeight.w600),),
                Text("VND 500000",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      height: 1.2,
                      fontWeight: FontWeight.w600),),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      CardOne(color: Colors.green,),
                      SizedBox(width: 20,),
                      CardOne(color: Colors.red,),
                    ],
                  ),
                )
              ],),
          )
        ],
      ),
    );
  }
}

class CardOne extends StatelessWidget {
  const CardOne({
    super.key, required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Credit",style: TextStyle(color: color,fontSize: 14,),),
                    Text("VND 5850",style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.w600),)],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_upward_outlined,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
