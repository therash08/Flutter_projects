import 'package:flutter/material.dart';
import 'package:rash_app/pages/home_page.dart';
import 'package:rash_app/pages/logging_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: false),
      darkTheme: ThemeData(
        primarySwatch: Colors.brown,
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      initialRoute: "/",

      routes: {
        "/": (context) => LoggingPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoggingPage(),
      },
    );
  }
}
