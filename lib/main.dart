import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              debugPrint("Login button pressed");
              //here is the login logic to get to the second page
               Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(builder: (context) => const HomePage()),
                           );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text('Login'),
          ),
        ),
      ),
    );
  }
}

