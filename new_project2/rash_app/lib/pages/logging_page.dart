import 'package:flutter/material.dart';

class LoggingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          Text(
            "welcome",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
