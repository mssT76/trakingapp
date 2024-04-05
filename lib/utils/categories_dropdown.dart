import 'package:flutter/material.dart';
import 'package:trakingapp/utils/icon_list.dart';

class CategoryDropdown extends StatelessWidget {
  CategoryDropdown({super.key, this.cattype, required this.onChanged});
  final String? cattype;
  final ValueChanged<String?> onChanged;
  var appIcons = AppIcon();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: cattype,
        isExpanded: true,
        hint: Text("Selected category"),
        items: appIcons.homeExpensesCategories
            .map((e) => DropdownMenuItem<String>(
            value: e['name'],
            child: Row(
              children: [
                Icon(e['icon'],color: Colors.black45,),
                Text(e['name'],style: TextStyle(color: Colors.black45),),
              ],
            ),))
            .toList(),
        onChanged: onChanged);
  }
}
