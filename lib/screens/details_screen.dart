import 'package:flutter/material.dart';
import 'package:recipe_book_app/models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  
  final Recipe recipe;
  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            // Hero image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Image.asset(
                    recipe.imagePath,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Name, Ingredients, Instructions…
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Ingredients:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ...recipe.ingredients
                      .map((ingredient) => Text('- $ingredient'))
                      ,
                  const SizedBox(height: 8),
                  Text(
                    'Instructions:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(recipe.instructions),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
