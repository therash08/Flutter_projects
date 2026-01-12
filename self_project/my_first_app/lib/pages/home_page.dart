import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("myApplication")),
      body: Center(child: Container(child: Text("welcome to rasidul hoque"))),

      drawer: Drawer(),
    );
  }
}
