import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu_model.dart';

Widget buildMenuList(Menu menuItem) {
  //build the expansion tile
  double lp = 0; //left padding
  double fontSize = 20;
  if (menuItem.level == 1) {
    lp = 20;
    fontSize = 16;
  }
  if (menuItem.level == 2) {
    lp = 30;
    fontSize = 14;
  }

  if (menuItem.children.isEmpty) {
    return Builder(builder: (context) {
      return InkWell(
        child: Padding(
          padding: EdgeInsets.only(left: lp),
          child: ListTile(
            leading: Icon(menuItem.icon),
            title: Text(
              menuItem.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        onTap: () {
          // Close the drawer
          Navigator.pop(context);

          //Then direct user to dashboard page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => menuItem.screen,
            ),
          );
        },
      );
    });
  }

  return Padding(
    padding: EdgeInsets.only(left: lp),
    child: ExpansionTile(
      leading: Icon(menuItem.icon),
      title: Text(
        menuItem.title,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
      children: menuItem.children.map(buildMenuList).toList(),
    ),
  );
}
