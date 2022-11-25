import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('My Container'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20), boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(4.0, 4.0),
              blurRadius: 16.0,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 16.0,
              spreadRadius: 1.0,
            )
          ]),
        ),
      ),
    );
  }
}
