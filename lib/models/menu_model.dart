//The Menu Model
import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/dashboard.dart';

class Menu {
  int level = 0;
  IconData icon = Icons.drive_file_rename_outline;
  String title = "";
  Widget screen = const Dashboard();
  List<Menu> children = [];
  //default constructor
  Menu(this.level, this.icon, this.title, this.screen, this.children);

  //one method for  Json data
  Menu.fromJson(Map<String, dynamic> json) {
    //level
    if (json["level"] != null) {
      level = json["level"];
    }
    //icon
    if (json["icon"] != null) {
      icon = json["icon"];
    }
    //screen
    if (json["screen"] != null) {
      screen = json["screen"];
    }
    //title
    title = json['title'];
    //children
    if (json['children'] != null) {
      children.clear();
      //for each entry from json children add to the Node children
      json['children'].forEach((v) {
        children.add(Menu.fromJson(v));
      });
    }
  }
}
