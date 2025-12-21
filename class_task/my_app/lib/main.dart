import 'package:flutter/material.dart';

void main() async{
  await Supabase.initialize(
    
  )

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(), // ✅ fixed here
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Section H",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: const Icon(Icons.add, color: Colors.white),
      ),
      body: Center(child: Image.asset("images/Welcome.jpg", fit: BoxFit.cover)),
    );
  }
}
