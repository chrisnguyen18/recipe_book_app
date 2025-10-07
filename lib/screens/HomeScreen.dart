import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> recipes = [
      {
        'name': 'Spaghetti Bolognese',
        'ingredients': ['Spaghetti', 'Ground beef', 'Tomato sauce', 'Onion', 'Salt'],
        'steps': ['Boil pasta', 'Cook beef with onion', 'Add sauce', 'Combine and serve'],
      },
      {
        'name': 'Chicken Alfredo',
        'ingredients': ['Fettuccine', 'Chicken', 'Alfredo sauce'],
        'steps': ['Boil pasta', 'Cook chicken', 'Warm sauce', 'Mix together'],
      },
      {
        'name': 'Taco Salad',
        'ingredients': ['Lettuce', 'Ground beef', 'Taco seasoning', 'Tomatoes', 'Cheddar', 'Tortilla chips'],
        'steps': ['Cook beef with seasoning', 'Chop veggies', 'Mix in a bowl', 'Top with cheese and chips'],
      },
      {
        'name': 'Pancakes',
        'ingredients': ['Flour', 'Egg', 'Milk', 'Baking powder'],
        'steps': ['Mix batter', 'Pour on griddle', 'Flip when bubbly', 'Serve warm'],
      },
      {
        'name': 'Avocado Toast',
        'ingredients': ['Bread', 'Avocado', 'Salt', 'Pepper', 'Lemon (optional)'],
        'steps': ['Toast bread', 'Mash avocado', 'Spread on toast', 'Season and add lemon'],
      },
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe['name'] as String),
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
