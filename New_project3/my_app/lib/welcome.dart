import 'package:flutter/material.dart';
import 'sign_in.dart'; // Ensure filename is lowercase snake_case

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("image/b.jpeg", fit: BoxFit.fill)),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 300),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Color.fromARGB(255, 245, 242, 250),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Enter your details",
                  style: TextStyle(
                    color: Color.fromARGB(255, 244, 238, 248),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 216, 216, 230),
                    foregroundColor: const Color.fromARGB(255, 27, 23, 27),
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: const Text("Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
