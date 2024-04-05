import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcon {
  final List<Map<String, dynamic>> homeExpensesCategories = [
    {
      "name": "Internet",
      "icon": FontAwesomeIcons.wifi
    },
    {
      "name": "Milk",
      "icon": FontAwesomeIcons.mugHot
    },
    {
      "name": "Education",
      "icon": FontAwesomeIcons.graduationCap
    },
    {
      "name": "Water",
      "icon": FontAwesomeIcons.water
    },
    {
      "name": "Shoping",
      "icon": FontAwesomeIcons.shoppingCart
    },
  ];

  IconData getExpenseCategoryIcons(String categoryName){
    final category = homeExpensesCategories.firstWhere(
            (category) => category['name'] == categoryName,
        orElse: () => {"icon": FontAwesomeIcons.shoppingCart});
    return category['icon'];
  }
}