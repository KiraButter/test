class Recipe {
  String label;
  String imageUrl;
  String categorys;

  List<Ingredient> ingredients;
  List<Steps> step;

  Recipe(this.label, this.imageUrl, this.ingredients,
      this.step, this.categorys);

  static List<Recipe> samples = [
    Recipe(
      'Пирожное моти',
      'assets/moti.jpg',
      [
        Ingredient(
          100,
          'г',
          'рисовой муки',
        ),
        Ingredient(
          50,
          'г',
          'сахарной пудры',
        ),
        Ingredient(
          185,
          'мл',
          'воды',
        ),
        Ingredient(
          100,
          'г',
          'творога',
        ),
        Ingredient(
          100,
          'г',
          'творожного сыра',
        ),
        Ingredient(
          30,
          'г',
          'вишни',
        ),
        Ingredient(
          3,
          'ст. л.',
          'сахара',
        ),
      ],
      [
        Steps(1,'В жаропрочной миске смешать муку и пудру. Влить воду, добавить ваниль и краситель и перемешать до однородности.'),
        Steps(2, 'Миску поставить на водяную баню. При постоянном помешивании заварить тесто. Консистенция как пластилин. Охладить.'),
        Steps(3, 'Ягоды смешать с сахаром и проварить в течение 10-15 минут.'),
        Steps(4, 'Творог отжать. Добавить часть ягод и сыр, пробить блендером до однородной массы.'),
        Steps(5, 'Вмешать остальные ягоды. Убрать в холодильник на 1 час.'),
        Steps(6, 'Тесто выложить на присыпанный крахмалом стол. Раскатать в колбаску толщиной в 2-3 см, порезать на кусочки.'),
        Steps(7, 'Из кусочка теста сделать лепешку, в центр положить начинку и защипнуть, сформовать шарик. Так проделать со всеми кусочками.'),
        Steps(8, 'Убрать в холодильник на 2-3 часа и можно кушать.')
      ],
      'Десерт',
    ),
    // Recipe(
    //   'Лимонные веган-пирожные',
    //   'assets/vegan.jpg',
    //   2,
    //   [
    //     Ingredient(
    //       1,
    //       'can',
    //       'Tomato Soup',
    //     ),
    //   ],
    //   'zfb DSv',
    //   'Десерт',
    // ),
    // Recipe(
    //   'Плов с бараниной ',
    //   'assets/plov.jpg',
    //   4,
    //   [
    //     Ingredient(
    //       1,
    //       'box',
    //       'Spaghetti',
    //     ),
    //     Ingredient(
    //       4,
    //       '',
    //       'Frozen Meatballs',
    //     ),
    //     Ingredient(
    //       0.5,
    //       'jar',
    //       'sauce',
    //     ),
    //   ],
    //   'rdsebseb',
    //   'Ужин',
    // ),
    // Recipe(
    //   'Солянка',
    //   'assets/soup.jpg',
    //   2,
    //   [
    //     Ingredient(
    //       1,
    //       'can',
    //       'Tomato Soup',
    //     ),
    //   ],
    //   'zfb DSv',
    //   'Обед',
    // ),
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
    Category1('Десерт', 'assets/food_pancake.jpg'),
    Category1('Обед', 'assets/food_salmon.jpg'),
    Category1('Ужин', 'assets/food_friedrice.jpg')
  ];
}

class Steps {
  double number;
  String step;
  
  Steps (
    this.number,
    this.step
  );
}