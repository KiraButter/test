import 'package:flutter/material.dart';
import 'recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with ExploreScreen
    RecipesScreen(),
    Container(color: Color.fromARGB(255, 233, 199, 140)),
    // TODO: Replace with RecipesScreen
    Container(color: Color.fromARGB(255, 76, 175, 167)),
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
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
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
