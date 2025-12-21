import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: const IDCardScreen(),
    );
  }
}

class IDCardScreen extends StatelessWidget {
  const IDCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // REQUIREMENT: AppBar with custom title and center alignment
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[200], // Light background to make Card pop
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // REQUIREMENT: Card to display the entire ID content
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 10.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Shrinks card to fit content
                children: [
                  // REQUIREMENT: CircleAvatar to show a profile image
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://avatar.iran.liara.run/public/boy', // Sample placeholder image
                    ),
                    backgroundColor: Colors.tealAccent,
                  ),
                  const SizedBox(height: 20),

                  // REQUIREMENT: Text to display Name
                  const Text(
                    'Rasidul Hoque Chowdhury',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  // REQUIREMENT: Text to display Department info
                  const Text(
                    'Computer Science & Engineering',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      letterSpacing: 1.0,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // REQUIREMENT: Divider to separate sections visually
                  const Divider(
                    thickness: 1.5,
                    color: Colors.teal,
                    indent: 20,
                    endIndent: 20,
                  ),

                  const SizedBox(height: 10),

                  // REQUIREMENT: ListTile to show ID number with icon
                  const ListTile(
                    leading: Icon(Icons.badge, color: Colors.teal),
                    title: Text('ID Number'),
                    subtitle: Text('CSE-0182320012101333'),
                  ),

                  // REQUIREMENT: ListTile to show Email with icon
                  const ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text('Email Address'),
                    subtitle: Text('cse_0182320012101333@lus.ac.bd'),
                  ),

                  // REQUIREMENT: ListTile to show Phone number with icon
                  const ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal),
                    title: Text('Phone Number'),
                    subtitle: Text('01610624584'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
