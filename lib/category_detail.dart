import 'package:flutter/material.dart';
import 'recipe.dart';

class CategoryDetail extends StatefulWidget {
  final Category1 category;

  const CategoryDetail({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryDetailState createState() {
    return _CategoryDetailState();
  }
}

class _CategoryDetailState extends State<CategoryDetail> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.category1),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: [
            Text('Список рецептов')
          ],
        ),
      ),
    );
  }
}

