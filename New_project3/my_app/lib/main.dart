import 'package:flutter/material.dart';
import 'welcome_page.dart'; // Ensure this import matches your file structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(), // Corrected class name
    );
  }
}
