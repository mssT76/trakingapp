import 'package:flutter/material.dart';
import 'package:trakingapp/widget/homescreen.dart';
import 'package:trakingapp/widget/navbar.dart';
import 'package:trakingapp/widget/transaction_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  var pageViewList = [HomeScreen(),TransactionScreen()];


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: Navbar(
          selectedIndex: currentIndex,
          onDestinationSelected: (int value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
        body: pageViewList[currentIndex],
      ),
    );
  }
}
