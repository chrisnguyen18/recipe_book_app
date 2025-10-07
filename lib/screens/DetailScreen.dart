import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final name = args?['name'] as String? ?? 'Recipe';
    final ingredients = (args?['ingredients'] as List?)?.cast<String>() ?? const <String>[];
    final steps = (args?['steps'] as List?)?.cast<String>() ?? const <String>[];

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text('Ingredients', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            for (final item in ingredients) Text('• $item'),
            const SizedBox(height: 16),
            const Text('Instructions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            for (int i = 0; i < steps.length; i++) Text('${i + 1}. ${steps[i]}'),
          ],
        ),
      ),
    );
  }
}
