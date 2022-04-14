import 'package:flutter/material.dart';
import 'package:recipes/category_page.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

class Home extends StatefulWidget {
  @override
   _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with myhomepage
    MyHomePage(),
    CategoryPage(),
    Container(color: Color.fromARGB(255, 198, 131, 249)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Мои рецепты',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Категории',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
     
      // 3
      body: 
      
      SafeArea(
        // 4
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          // 5
          itemCount: Recipe.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          }, 
        ),
        
      ),
      
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16),
        // 4
        child: Column(
          children: <Widget>[
            
            ClipRRect(borderRadius: BorderRadius.circular(8),
            child: Image(image: AssetImage(recipe.imageUrl), height: 140,),),
            // 5
            const SizedBox(
              height: 14,
            ),
            // 6
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
           Text(recipe.categorys,
           style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ))
            
          ],
        ),
      ),
    );
  }
}

