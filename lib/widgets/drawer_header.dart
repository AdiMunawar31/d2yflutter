import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu_model.dart';

Widget buildDrawerHeader(Menu headItem) {
  return DrawerHeader(
      margin: const EdgeInsets.only(bottom: 0),
      decoration: const BoxDecoration(
        color: Colors.cyan,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            margin: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(
                'assets/images/logo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(),
          Text(
            headItem.title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10.0,
          )
        ],
      ));
}
