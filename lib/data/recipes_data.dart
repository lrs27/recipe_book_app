import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/pasta.png',
    ingredients: [
      'Spaghetti',
      'Ground beef',
      'Tomato sauce',
      'Onion',
      'Garlic',
    ],
    instructions:
        'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),

  Recipe(
    name: 'Caesar Salad',
    imagePath: 'assets/images/caesar-salad.png',
    ingredients: [
      'Romaine lettuce',
      'Croutons',
      'Parmesan cheese',
      'Caesar dressing',
    ],
    instructions:
        'Toss lettuce with dressing. Top with croutons & parmesan. Serve chilled.',
  ),

  Recipe(
    name: 'Chicken Curry',
    imagePath: 'assets/images/chicken_curry.png',
    ingredients: ['Chicken', 'Curry powder', 'Coconut milk', 'Onion', 'Garlic'],
    instructions:
        'Sauté onion & garlic. Add chicken & curry powder. Pour coconut milk. Simmer until cooked.',
  ),

  Recipe(
    name: 'Pancakes',
    imagePath: 'assets/images/pancakes.png',
    ingredients: ['Flour', 'Milk', 'Eggs', 'Sugar', 'Baking powder'],
    instructions:
        'Mix dry ingredients. Add milk & eggs. Cook on griddle until golden.',
  ),
];
