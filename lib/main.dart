import 'package:flutter/material.dart';

void main() {
  runApp(const MyBusinessCard());
}

class MyBusinessCard extends StatelessWidget {
  const MyBusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/profile.jpeg',
                ), // Add your picture here
              ),
              const SizedBox(height: 16),
              const Text(
                'Fahad',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.tealAccent,
                  letterSpacing: 2.5,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.teal),
                  title: const Text('+92 300 1234567'),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.teal),
                  title: const Text('your.email@example.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
