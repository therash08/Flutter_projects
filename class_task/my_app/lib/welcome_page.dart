import 'package:flutter/material.dart';
import 'sign_in.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("images/register.png", fit: BoxFit.fill),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 250),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  "Enter Your Details",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                SizedBox(height: 250),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,

                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 50),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
