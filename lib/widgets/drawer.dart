import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu_model.dart';
import 'package:flutter_widgets/widgets/drawer_header.dart';
import 'package:flutter_widgets/widgets/drawer_menu_list.dart';

Widget buildDrawer(List<Menu> data) {
  return ListView.separated(
    padding: const EdgeInsets.only(top: 0),
    itemCount: data.length,
    itemBuilder: (BuildContext context, int index) {
      if (index == 0) {
        return buildDrawerHeader(data[index]);
      }
      return buildMenuList(data[index]);
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(
      height: 1,
      thickness: 2,
    ),
  );
}
