import 'package:flutter/material.dart';

void main() {
  runApp(const UniMateApp());
}

class UniMateApp extends StatelessWidget {
  const UniMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniMate',
      theme: ThemeData(
        primarySwatch: Colors.indigo, // অ্যাপের মেইন কালার
        useMaterial3: true,
      ),
      home: const LoginScreen(), // শুরুতে Login Screen আসবে
    );
  }
}

// ------------------- 1. LOGIN SCREEN -------------------
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // এখানে টেক্সট কন্ট্রোলার থাকবে (ইনপুট নেওয়ার জন্য)
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // অ্যাপ লোগো বা আইকন
              const Icon(Icons.school, size: 80, color: Colors.indigo),
              const SizedBox(height: 20),
              const Text(
                "Welcome to UniMate",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const Text(
                "Sign in to continue",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 40),

              // ইমেইল ইনপুট
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: "Student Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // পাসওয়ার্ড ইনপুট
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 24),

              // লগইন বাটন
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // এখানে লগইন লজিক হবে। আপাতত সরাসরি হোম পেজে পাঠিয়ে দিচ্ছি।
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              // সাইন আপ অপশন
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      // সাইন আপ পেজে যাওয়ার কোড এখানে হবে
                    },
                    child: const Text("Sign Up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------- 2. HOME SCREEN (DASHBOARD) -------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              // লগআউট করে আবার লগইন পেজে পাঠানো
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Student! 👋",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "What would you like to check today?",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // গ্রিড ভিউ দিয়ে ড্যাশবোর্ড মেনু
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // পাশাপাশি ২টা কার্ড থাকবে
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  // টিচার ইনফো কার্ড
                  _buildMenuCard(
                    context,
                    title: "Teacher Info",
                    icon: Icons.person_search,
                    color: Colors.blueAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PlaceholderScreen(title: "Teacher Info"),
                      ),
                    ),
                  ),

                  // বাস শিডিউল কার্ড
                  _buildMenuCard(
                    context,
                    title: "Bus Schedule",
                    icon: Icons.directions_bus,
                    color: Colors.orangeAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PlaceholderScreen(title: "Bus Schedule"),
                      ),
                    ),
                  ),

                  // ক্লাসরুম চেক কার্ড
                  _buildMenuCard(
                    context,
                    title: "Classroom Check",
                    icon: Icons.meeting_room,
                    color: Colors.teal,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PlaceholderScreen(title: "Classroom Check"),
                      ),
                    ),
                  ),

                  // রুটিন কার্ড (বাড়তি ফিচার)
                  _buildMenuCard(
                    context,
                    title: "My Routine",
                    icon: Icons.calendar_month,
                    color: Colors.purpleAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PlaceholderScreen(title: "My Routine"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // মেনু কার্ড বানানোর ডিজাইন উইজেট
  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------- 3. PLACEHOLDER SCREEN -------------------
// এটা শুধু টেস্টিংয়ের জন্য। পরে এখানে আসল TeacherInfo/BusSchedule স্ক্রিন বসবে।
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          "$title Page Coming Soon!",
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}
