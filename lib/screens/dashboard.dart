import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu_model.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard(this.menuItem, {Key? key}) : super(key: key);
  // // Declare a field that holds the User
  // final Menu menuItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Are you ready for  ?",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
        ));
  }
}
