// ignore: unused_import
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 80;
  final String name = 'sylhet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("rash app")),
      body: Center(
        child: Container(
          child: Text("welcome to $days of university by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
