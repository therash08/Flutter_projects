import 'package:flutter/material.dart';
import 'sign_up.dart'; // Make sure this file exists

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added resizeToAvoidBottomInset to prevent overflow when keyboard appears
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("image/b.jpeg", fit: BoxFit.fill)),
          Positioned(
            top: 40, // Increased top padding for safe area
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            ),
          ),
          Center(
            child: Column(
              children: [
                const Expanded(flex: 1, child: SizedBox(height: 200)),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 240, 239, 232),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 70, 90),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          obscureText: true, // Hide password text
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              128,
                              50,
                              245,
                            ),
                            foregroundColor: const Color.fromARGB(
                              255,
                              246,
                              216,
                              246,
                            ),
                            minimumSize: const Size(200, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                          child: const Text("Sign In"),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUp(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
