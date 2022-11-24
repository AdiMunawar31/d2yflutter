import 'package:flutter/material.dart';
import 'package:flutter_widgets/data/menu.dart';
import 'package:flutter_widgets/models/menu_model.dart';
import 'package:flutter_widgets/widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Menu> data = [];
  bool isSwitched = false;

  @override
  void initState() {
    for (var element in dataList) {
      data.add(Menu.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter D2Y',
      debugShowCheckedModeBanner: false,
      theme: isSwitched ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('D2Y - FLUTTER'),
            actions: [
              Switch(
                  activeColor: Colors.greenAccent,
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = !isSwitched;
                    });
                  }),
            ],
          ),
          drawer: Drawer(
            child: buildDrawer(data),
          ),
          body: const Center(
            child: Text(
              "Main Screen Contents...",
              style: TextStyle(fontSize: 20),
            ),
          )),
    );
  }
}
