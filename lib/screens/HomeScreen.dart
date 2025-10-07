import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = <String>[
      'Spaghetti Bolognese',
      'Chicken Alfredo',
      'Taco Salad',
      'Pancakes',
      'Avocado Toast',
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: recipe,
              );
            },
          );
        },
      ),
    );
  }
}
