import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/menu.dart';
import 'package:flutter_widgets/models/menu_model.dart';
import 'package:flutter_widgets/widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Menu> data = [];

  @override
  void initState() {
    for (var element in dataList) {
      data.add(Menu.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: buildDrawer(data),
        ),
        body: const Center(
          child: Text(
            "Main Screen Contents...",
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
