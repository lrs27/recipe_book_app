import 'package:flutter/material.dart';
import '../data/recipes_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // <-- makes the page white

      appBar: AppBar(
        title: const Text('Recipe Book'),
        backgroundColor: Colors.purple.shade300, // <-- makes the app bar orange
      ),

      body: ListView.builder(
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                recipe.imagePath,
                width: 56,
                fit: BoxFit.cover,
              ),
              title: Text(recipe.name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
