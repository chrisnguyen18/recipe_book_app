import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to DetailsScreen
            Navigator.pushNamed(context, '/details');
            // or with data:
            // Navigator.pushNamed(context, '/details', arguments: 'Hello from Home!');
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}
