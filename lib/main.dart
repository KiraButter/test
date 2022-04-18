import 'package:flutter/material.dart';
import 'package:recipes/config.dart';
import 'home.dart';
import 'theme.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    // 3
    return MaterialApp(
      // 4
      title: 'Recipe Calculator',
      // 5
      theme: FooderlichTheme.light(),
      darkTheme: FooderlichTheme.dark(),
      themeMode: ThemeMode.light,
      // 6
      home: Home(),
    );
  }
}


