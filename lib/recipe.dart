class Recipe {
  String label;
  String imageUrl;
  String opisanie;
  String categorys;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients,
      this.opisanie, this.categorys);

  static List<Recipe> samples = [
    Recipe(
      'Chocolate Cup Cake',
      'assets/food_cupcake.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
      'rdsebseb',
      'desert',
    ),
    Recipe(
      'Seafood Spaghetti',
      'assets/food_spaghetti.jpg',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
      'zfb DSv',
      'lunch',
    ),
    Recipe(
      'Pancake ',
      'assets/food_pancake.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
      'rdsebseb',
      'desert',
    ),
    Recipe(
      'Curry',
      'assets/food_curry.jpg',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
      'zfb DSv',
      'dinner',
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}

class Category1 {
  String category1;
  String url;

  Category1(
    this.category1,
    this.url,
  );
  static List<Category1> samples = [
    Category1('desert', 'assets/food_pancake.jpg'),
    Category1('lunch', 'assets/food_salmon.jpg'),
    Category1('dinner', 'assets/food_friedrice.jpg')
  ];
}
