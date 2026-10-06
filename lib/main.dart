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
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              debugPrint("Login button pressed");
              //here there will be the login logic to get to the second page.
              //the debugPrint should be replaced with the login logic.
              // Navigator.pushReplacement(
              //               context,
              //               MaterialPageRoute(builder: (context) => const HomePage()),
              //             );
              // remove the forward slashes when the login page is done
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