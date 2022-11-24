import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/menu.dart';
import 'package:flutter_widgets/models/menu_model.dart';
import 'package:flutter_widgets/screens/dashboard.dart';
import 'package:flutter_widgets/screens/home.dart';
import 'package:flutter_widgets/screens/testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter D2Y',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'D2Y - Flutter'),
    );
  }
}
