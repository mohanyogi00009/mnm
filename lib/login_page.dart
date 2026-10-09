import 'package:flutter/material.dart';
import 'home_page.dart'; // Import your home page

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 12),
            // password code
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 24),
         SizedBox(
         width: 220,
            child:ElevatedButton(
              onPressed: () {
                // Navigate to HomePage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF54347E), // Button color
                foregroundColor: Colors.white, // Text color
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text('Login'),
            ),
         ),  // Space between the two buttons
            const SizedBox(height: 12),

            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  // Create account function
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF0569),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text('Create an Account'),
              ),
            ),
          ]
        ),
      ),
    );
  }
}