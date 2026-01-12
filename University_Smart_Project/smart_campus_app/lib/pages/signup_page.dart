import 'package:flutter/material.dart';
import '../widgets/glass_card.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Make sure 'assets/campus.jpg' exists in your pubspec.yaml
          // If not, use a Container with a color instead like below:
          Container(color: Colors.blueGrey),

          // Image.asset('assets/campus.jpg', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.5)),

          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: GlassCard(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(label: "Full Name"),
                    const SizedBox(height: 12),
                    const CustomTextField(label: "Email"),
                    const SizedBox(height: 12),
                    const CustomTextField(label: "Password", obscure: true),
                    const SizedBox(height: 12),
                    const CustomTextField(
                      label: "Confirm Password",
                      obscure: true,
                    ),

                    const SizedBox(height: 20),
                    CustomButton(
                      text: "Create Account",
                      onTap: () => Navigator.pop(context),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        "Already have an account? Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
